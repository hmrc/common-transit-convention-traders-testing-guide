use Rack::Auth::Basic, "Restricted Area" do |username, password|
  [username, password] == [ENV['USERNAME'], ENV['PASSWORD']]
end

module Rack
  class TryStatic
    def initialize(app, options)
      @app = app
      @try = ['', *options.delete(:try)]
      @static = ::Rack::Static.new(lambda { [404, {}, []] }, options)
    end

    def call(env)
      orig_path = env['PATH_INFO']
      found = nil

      @try.each do |path|
        resp = @static.call(env.merge!({'PATH_INFO' => orig_path + path}))
        break if 404 != resp[0] && found = resp
      end

      found or @app.call(env.merge!('PATH_INFO' => orig_path))
    end
  end
end

use Rack::Deflater
use Rack::TryStatic,
    root: 'build',
    urls: %w(/),
    try: %w(.html index.html /index.html),
    cache_control: 'public, max-age=2592000'

run lambda { |env|
  not_found_page = File.expand_path('../build/404/index.html', __FILE__)
  content = File.exist?(not_found_page) ? File.read(not_found_page) : '404 - page not found'
  return [404, { 'Content-Type'  => 'text/html'}, [content]]
}
