---
title: CTC Traders API Testing Guide
weight: 1
description: Software developers, designers, product owners or business analysts. Integrate your software with Common Transit Convention Traders API.
---

# CTC Traders API Testing Guide

##Useful CTC page links

[CTC Traders API Roadmap](https://developer.service.hmrc.gov.uk/roadmaps/common-transit-convention-traders-roadmap/)

[CTC Traders API Documentation](https://developer.service.hmrc.gov.uk/api-documentation/docs/api/service/common-transit-convention-traders/1.0)

[CTC Traders API Service Guide](https://developer.service.hmrc.gov.uk/guides/common-transit-convention-traders-service-guide/)

##Introduction

This guidance page signposts software developers to essential information and materials.

This is needed when testing to check your software is compatible and will work with our CTC Traders API.

Scroll down the page for further instructions.

##Before you start

When you are ready to test your software, first read and understand the [CTC Traders API Service Guide](https://developer.service.hmrc.gov.uk/guides/common-transit-convention-traders-service-guide/).

We strongly advise you to start testing your software for compatibility purposes as soon as possible.

##What is Trader Test?

**Before you can get access to the live production environment, you must check that your software is fully compatible with our CTC Traders API.**

Trader Test simulates both the automated responses and also the real life experience where NCTS support staff do the tasks of Border Force personnel.

When your testing requires a manual response, they will perform the live manual steps of the process. This simulates and tests a full real-life journey from start to finish for you.

You can do this by performing a series of compatibility tests on your software using our sandbox environment. This is a replica of the live production environment. You’ll also need to do some sample scenarios and test data for both Great Britain and Northern Ireland.

##Get set up for testing

1. First **register** for a developer account. You can do this by following the instructions on the [Using the Developer Hub](https://developer.service.hmrc.gov.uk/api-documentation/docs/using-the-hub) page.
2. [**Sign back in**](https://developer.service.hmrc.gov.uk/developer/login) to the HMRC Developer Hub.
3. **Create an application** by going to the Create Test User API.
4. Then **create another application** by going to the [Common Transit Convention Traders API](https://developer.service.hmrc.gov.uk/api-documentation/docs/api/service/common-transit-convention-traders/1.0).
5. **Create a user ID and password** for either an [individual](https://developer.service.hmrc.gov.uk/api-documentation/docs/api/service/api-platform-test-user/1.0#_create-a-test-user-which-is-an-individual_post_accordion) or an [organisation](https://developer.service.hmrc.gov.uk/api-documentation/docs/api/service/api-platform-test-user/1.0#_create-a-test-user-which-is-an-organisation_post_accordion).
6. **Subscribe to our Common Transit Convention Traders API** on the Developer Hub under the section called Your Specific Applications.
7. **Create a Client ID and Client Secret.**
8. Use the Create Test User API to **get a user ID, password, EORI enrolment and other test details**. Ensure you include the CTC Trader EORI enrolment by including the following request body in the call to the Create Test User API:
9. You will also need to access and use the [NCTS Trader Test Access and Channels](https://assets.publishing.service.gov.uk/government/uploads/system/uploads/attachment_data/file/940784/NCTS_Trader_Test_Access_Channels_and_Support_v1.1.pdf) reference guide (ODT document opens and downloads). You will need this guide to help you navigate between the old XML based system and our new API.

##How to test your software

First, download the latest [CTC Traders API Test Pack](https://www.gov.uk/government/publications/new-computerised-transit-system-technical-specifications) to test your software is compatible with our API.

You must do some sample scenarios and test data for both Great Britain and Northern Ireland.

You can find cURL commands and Postman collections on our [GitHub page](https://github.com/hmrc/common-transit-convention-traders-postman).

These will give you examples of how to connect to our API.

You can use the following cURL commands to simulate:

 - your software application’s actions and messages
 - the actions and messages that would come back from the NCTS
 
If you want to use the XML directly, you can extract these from the files found in the Github repository either by using:

 - Postman for the [Postman collection](https://github.com/hmrc/common-transit-convention-traders-postman/tree/master/Collections)
 - Text editor for [all files](https://github.com/hmrc/common-transit-convention-traders-postman/)

##How to test for push pull notifications

**Note**: if your endpoint is hosted by Amazon Web Services (AWS) then you must either use [edge-optimised custom domain names](https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-edge-optimized-custom-domain-name.html) or [regional custom domain names](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-regional-api-custom-domain-create.html).

When testing your software, you can be sent automatic notifications using the [Push Pull Notifications API](https://developer.service.hmrc.gov.uk/api-documentation/docs/api/service/push-pull-notifications-api/1.0).

This is where notifications from NCTS are sent  to your software in near real time.

To get these automatic messages, you must:

 - subscribe to the Push Pull Notifications service
 - subscribe to the CTC Traders API in the sandbox environment
 - configure the notification URL in the subscription configuration section of Developer Hub:
 
 ![NotificationWebAddress](/figures/notification_url_subscription.png)

To subscribe to the Push Pull Notifications service, go to Developer Hub.

 ![Subscription](/figures/Push_Pull_Notification_switch.png)
 
###How it works

This diagram shows an example of the process where your service needs to return a 200 HTTP status as part of the automated notification process.

![Push Message From NCTS](/figures/Push_NCTS_Diagram.png)

##Submit your results

Once you are satisfied with your tests and are confident that your software is fully compatible with our API:
 - log all your evidence and results by filling in all the sections of this [checklist form](https://developer.service.hmrc.gov.uk/guides/common-transit-convention-traders-testing-guide/figures/CTC_Traders_API_Application_for_Productions_Credentials.docx) (this is a Word document which will download). You must also answer all the questions at the end of the checklist.
 - when ready, email your completed form to [SDSTeam@hmrc.gov.uk](mailto:SDSTeam@hmrc.gov.uk)
 - we’ll check your test evidence using the information you give on this form.
 - when we are satisfied that you have done enough testing, you will be granted access to the live API system.
 
##Get support

###General support for development and testing

Email our Software Developer Support Team at [SDSTeam@hmrc.gov.uk](mailto:SDSTeam@hmrc.gov.uk) if you have any questions or difficulties or need additional clarification on this testing process. 

###Support for Trader Test

While using the Trader Test service, you may need to request a manual intervention from Trader Test support. 

You can find more information about this in the [NCTS Access and Channels document](https://assets.publishing.service.gov.uk/government/uploads/system/uploads/attachment_data/file/940784/NCTS_Trader_Test_Access_Channels_and_Support_v1.1.pdf), but when you need to generate a manual response, [email the Trader Test support team with your request](mailto:SDSTeam@hmrc.gsi.gov.uk)). 

Please note - it can take 24 hours to get a response.

###Support for live user issues

Once your software is live, your point of contact is the NCTS helpdesk - [ncts.helpdesk@hmrc.gov.uk](mailto:ncts.helpdesk@hmrc.gov.uk) or **0300 322 7095**.

It can help with all user issues such as access and enrolment.

###Finding a bug

If you have found a bug in our code, you can get in touch with our developers directly on our [Github issues page](https://github.com/hmrc/common-transit-convention-traders/issues).

##Useful CTC page links

[CTC Traders API Roadmap](https://developer.service.hmrc.gov.uk/roadmaps/common-transit-convention-traders-roadmap/)

[CTC Traders API Documentation](https://developer.service.hmrc.gov.uk/api-documentation/docs/api/service/common-transit-convention-traders/1.0)

[CTC Traders API Service Guide](https://developer.service.hmrc.gov.uk/guides/common-transit-convention-traders-service-guide/)