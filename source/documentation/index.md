---
title: CTC Traders Testing Guide
weight: 1
description: Software developers, designers, product owners or business analysts. Integrate your software with Common Transit Convention Traders API.
---

# CTC Traders API trader test guidance and support

## General guidance

This reference page signposts software developers to essential information and materials. You’ll need this information when developing and testing your software to interact and work with our CTC Traders API and HMRC systems. We’ve included more detailed instructions further down this page.

## General introduction to CTC

- [Introduction to Common Transit Convention](https://www.gov.uk/guidance/common-transit-convention-countries) and participating countries
- [CTC newsletter updates and general information](https://www.gov.uk/government/publications/community-common-transit-and-tir-newsletters) - read and bookmark this page for future reference

## Essential reading

- [CTC API documentation](https://developer.service.hmrc.gov.uk/api-documentation/docs/api/service/common-transit-convention-traders/1.0)
- [CTC service roadmap](https://developer.service.hmrc.gov.uk/roadmaps/common-transit-convention-traders-roadmap/)
- [CTC end-to-end service guide](https://developer.service.hmrc.gov.uk/guides/common-transit-convention-traders-service-guide/)
- [CTC end-to-end happy path](https://developer.service.hmrc.gov.uk/guides/common-transit-convention-traders-service-guide/documentation/end-to-end-happy-path.html)
- Service tube maps of arrivals and departures journeys (coming soon)
- [Step by step tutorials](https://developer.service.hmrc.gov.uk/api-documentation/docs/tutorials) to write a program to connect to an HMRC API

## Essential developer materials

- [NCTS Technical Interface Specifications (TIS)](https://assets.publishing.service.gov.uk/government/uploads/system/uploads/attachment_data/file/952903/TIS-012021accessible-v2__1_.pdf)
- [TIS Appendices](https://assets.publishing.service.gov.uk/government/uploads/system/uploads/attachment_data/file/641489/NCTSPhase4TISAppv3_9_3.pdf)
- [CTC Traders API Test Pack](https://www.gov.uk/government/publications/new-computerised-transit-system-technical-specifications)
- [Application for Production Credentials Checklist](../figures/CTC_Traders_API_Application_for_Productions_Credentials_v16_21.5.21.docx)
- [NCTS Trader Test Access and Channels](https://assets.publishing.service.gov.uk/government/uploads/system/uploads/attachment_data/file/940784/NCTS_Trader_Test_Access_Channels_and_Support_v1.1.pdf)
- [IE messages supported by CTC](https://developer.service.hmrc.gov.uk/guides/common-transit-convention-traders-service-guide/documentation/supported-messages.html)
- [Postman collection of example API calls and cURL commands](https://github.com/hmrc/common-transit-convention-traders-postman)
- [XSD reference files](https://developer.service.hmrc.gov.uk/guides/common-transit-convention-traders-service-guide/documentation/xsd-reference.html)
- [Mapping document which translates  EDIFACT to XML](https://github.com/hmrc/common-transit-convention-traders-test-support/raw/master/resources/public/api/conf/1.0/docs/xml-2-edifact-mapping-updated12112020.pdf) and also contains the human readable fieldnames (pdf document opens and downloads)

## Detailed guidance

This section provides more detailed information and instructions to new software developers using our CTC Traders API. You’ll need this information when developing and testing your software to ensure it is compatible with our CTC Traders API and HMRC Systems.

We strongly advise you to start testing your software for compatibility purposes as soon as possible. 

## Test your scenarios

- Our API lets software developers and test engineers submit departure and arrival movement notifications into our sandbox testing environment. 
- You can test your software by using our sandbox to ensure that its connectivity works properly with HMRC systems.

Trader Test simulates both the automated responses and also the real life experience where NCTS support staff do the tasks of Border Force personnel. So during your testing when you require a manual response, they will perform the live manual steps of the process. This simulates and tests a full real-life journey from start to finish for you. 

You must

1. Test common scenarios using our [CTC Traders API Test Pack](https://www.gov.uk/government/publications/new-computerised-transit-system-technical-specifications). This gives you all the reference data you need to do our tests plus any of your own tailored tests.
2. Check against our [XSDs](https://developer.service.hmrc.gov.uk/guides/common-transit-convention-traders-service-guide/documentation/xsd-reference.html) for schema validation. You can download a zip file with all the CTC Traders API XSDs.
3. Cross reference with [TIS Appendix B Technical Message Structures](https://assets.publishing.service.gov.uk/government/uploads/system/uploads/attachment_data/file/641489/NCTSPhase4TISAppv3_9_3.pdf) to check which data fields are optional and mandatory. 
4. When you need a manual response, email us to request this. You can find more information about this in the [NCTS Access and Channels document](https://assets.publishing.service.gov.uk/government/uploads/system/uploads/attachment_data/file/940784/NCTS_Trader_Test_Access_Channels_and_Support_v1.1.pdf).

## How to get set up for testing 

1. First register for a developer account. You can do this by following the instructions on the [Using the Developer Hub](https://developer.service.hmrc.gov.uk/api-documentation/docs/using-the-hub) page.
2. [Sign back in](https://developer.service.hmrc.gov.uk/developer/login) to the HMRC Developer Hub
3. Create an application by going to the [Create Test User API](https://developer.service.hmrc.gov.uk/api-documentation/docs/api/service/api-platform-test-user/1.0)
4. Then create another application by going to the [Common Transit Convention Traders API](https://developer.service.hmrc.gov.uk/api-documentation/docs/api/service/common-transit-convention-traders/1.0)
5. Create a user ID and password for either an [individual](https://developer.service.hmrc.gov.uk/api-documentation/docs/api/service/api-platform-test-user/1.0#_create-a-test-user-which-is-an-individual_post_accordion) or an [organisation](https://developer.service.hmrc.gov.uk/api-documentation/docs/api/service/api-platform-test-user/1.0#_create-a-test-user-which-is-an-organisation_post_accordion)
6. Subscribe to our Common Transit Convention Traders API on the developer hub under the section called Your Specific Applications
7. Create a Client ID and Client Secret
8. Use the Create Test User API to get a user ID, password, EORI enrolment and other test details. Ensure you include the CTC Trader EORI enrolment by including the following request body in the call to the Create Test User API:
   
```
{
  "serviceNames": [
    "common-transit-convention-traders"
  ]
}
```

## How to test using sample test scripts

You can find cURL commands and Postman collections on our [GitHub page](https://github.com/hmrc/common-transit-convention-traders-postman).

These will give you examples of how to connect to our API. You can use the following cURL commands to simulate: 

- your software application’s actions and messages
- the actions and messages that would come back from the NCTS
  
See IE015 cURL command
  
See IE016 cURL command

See Get Dept Id cURL command

You can also find a full list of [cURL commands on our GitHub page](https://github.com/hmrc/common-transit-convention-traders-postman/blob/master/Curl%20commands/Curl%20Commands%20for%20External%20Test).

You can access and use our full collection of [postman test scripts on GitHub](https://github.com/hmrc/common-transit-convention-traders-postman/tree/master/Collections). This collection of test scripts will give you examples of how to connect to our API.

You will need to:

- Access the [readme file](https://github.com/hmrc/common-transit-convention-traders-postman/blob/master/README.md) and Postman Collections for CTC API Traders
- Follow the on screen instructions

## XSD files

You can access a full list of [XSD reference files](https://developer.service.hmrc.gov.uk/guides/common-transit-convention-traders-service-guide/documentation/xsd-reference.html) to check your XML files against our XSD files. Use these to validate your own XML.

- You should note there are some known omissions in this XSD list
- These are all listed in a [mapping document](./../figures/xml-2-edifact-mapping-updated12112020.pdf) so ensure you cross-reference this document when testing
- You should also note that NumOfLoaLisHEA304 has been included in error in the following messages, and to ignore these:
  - IE015 (CC015B)
  - IE029 (CC029B)
  - IE043 (CC043A)
  - IE051 (CC051B)

## Mapping document

You can access a [mapping document](./../figures/xml-2-edifact-mapping-updated12112020.pdf) containing plain English header descriptions, XML and EDIFACT code.

## CTC Traders API Test Pack

You can download the latest [CTC Traders API Test Pack](https://www.gov.uk/government/publications/new-computerised-transit-system-technical-specifications) to use when checking and testing your software is compatible with HMRC systems.

## NCTS API technical interface specifications (TIS)

You can find all the [NCTS API technical Interface specifications](https://www.gov.uk/government/publications/new-computerised-transit-system-technical-specifications) in one location. 

- Access and read the main document which is the first part of the [Technical Interface Specification (TIS) for Direct Trader Input (DTI) to NCTS](https://assets.publishing.service.gov.uk/government/uploads/system/uploads/attachment_data/file/952903/TIS-012021accessible-v2__1_.pdf)

Input (DTI) to NCTS This is where you can find a full list of messages, message content and sequence diagrams plus instructions on how to use test message transfer and content. 

You should note that:

- this is not the [CTC Traders API technical specifications](https://developer.service.hmrc.gov.uk/api-documentation/docs/api/service/common-transit-convention-traders/1.0) for Common Transit Convention
- the CTC Traders API will be using XML and RESTful standards. It will not be using EDIFACT wrapper or SOAP
- currently the TIS is tailored more towards the legacy systems and not the new CTC Traders XML API 
- we will revise and republish the CTC Traders API technical specifications for Common Transit Convention later in 2021 so bookmark this page to access them when they are published
- you will find the TIS Appendices very useful. [Appendix B Technical Message Structures](https://assets.publishing.service.gov.uk/government/uploads/system/uploads/attachment_data/file/641489/NCTSPhase4TISAppv3_9_3.pdf) will help you to check which data fields are optional and mandatory

## Running test data sets 

Once you have successfully run your tests using the test data exactly as is set out for each scenario, you can then run test data in any of the other fields. 

There is an exception. You must not change the field data for the Consignor and Consignee details. These must remain the same and constant in every test you do otherwise your tests will fail. The same applies to the Guarantee data. This must remain constant and not be changed. 

So for example, when testing message IE015 do not change the text which is **BLOCK CAPITALS AND IN BOLD** at all:

#### CONSIGNOR

<table>
  <tr>
    <th>Reference</th>
    <th>Description</th>
    <th>Data</th>
  </tr>
  <tr>
    <td>CO1</td>
    <td>Trader Name</td>
    <td><strong>NCTS UK TEST LAB HMCE</strong></td>
  </tr>
  <tr>
    <td></td>
    <td>Trader Street and Number</td>
    <td><strong>11TH FLOOR, ALEX HOUSE, VICTORIA AV</strong></td>
  </tr>
  <tr>
    <td></td>
    <td>Trader Postal Code</td>
    <td><strong>SS99 1AA</strong></td>
  </tr>
  <tr>
    <td></td>
    <td>Trader City</td>
    <td><strong>SOUTHEND-ON-SEA, ESSEX</strong></td>
  </tr>
  <tr>
    <td></td>
    <td>Trader Country Code</td>
    <td><strong>GB</strong></td>
  </tr>
  <tr>
    <td></td>
    <td>Trader Name and Address Language Code</td>
    <td><strong>EN</strong></td>
  </tr>
  <tr>
    <td></td>
    <td>Trader EORI-TIN</td>
    <td><strong>GB954131533000</strong></td>
  </tr>
</table>

#### CONSIGNEE

<table>
  <tr>
    <th>Reference</th>
    <th>Description</th>
    <th>Data</th>
  </tr>
  <tr>
    <td>CE1</td>
    <td>Trader Name</td>
    <td><strong>NCTS UK TEST LAB HMCE</strong></td>
  </tr>
  <tr>
    <td></td>
    <td>Trader Street and Number</td>
    <td><strong>ITALIAN OFFICE</strong></td>
  </tr>
  <tr>
    <td></td>
    <td>Trader Postal Code</td>
    <td><strong>IT99 1IT</strong></td>
  </tr>
  <tr>
    <td></td>
    <td>Trader City</td>
    <td><strong>MILAN</strong></td>
  </tr>
  <tr>
    <td></td>
    <td>Trader Country Code</td>
    <td><strong>IT</strong></td>
  </tr>
  <tr>
    <td></td>
    <td>Trader Name and Address Language Code</td>
    <td><strong>EN</strong></td>
  </tr>
  <tr>
    <td></td>
    <td>Trader EORI-TIN</td>
    <td><strong>IT11ITALIANC11</strong></td>
  </tr>
</table>

#### GUARANTEE - REFERENCE

<table>
  <tr>
    <th>Reference</th>
    <th>Description</th>
    <th>Data</th>
  </tr>
  <tr>
    <td>REF</td>
    <td>Guarantee Reference Number</td>
    <td><strong>09GB00000100000M0</strong></td>
  </tr>
  <tr>
    <td></td>
    <td>Guarantee Access Code</td>
    <td><strong>AC01</strong></td>
  </tr>
  <tr>
    <td></td>
    <td>Guarantee Reference Amount</td>
    <td><strong>£5.000.00 GBP</strong></td>
  </tr>
</table>

You can also use the reference data included in our Test Pack to run your software tests outside of the scope of the scenarios that we have listed. These will have limited support.

You must always remember to follow the same physical format for all data fields. For example, you could replace £5,000.00 guarantee amount to £11,000.00.

## Checking API service availability

You can check planned API downtime or if there are technical issues:

- [Check HMRC API platform availability](https://api-platform-status.production.tax.service.gov.uk/)
- [Check the NCTS service availability](https://www.gov.uk/government/publications/new-computerised-transit-system-ncts-web-service-availability-and-issues/new-computerised-transit-system-ncts-web-service-availability-and-issues)

## If you find a bug

If you have found a bug in our code, you can get in touch with our developers directly on our [GitHub Issues page](https://github.com/hmrc/common-transit-convention-traders/issues).

## Contact us for CTC API specific advice

- If you have a specific question about the CTC Traders API, get in touch with our Software Developer Support Team. You’ll get an initial response in 2 working days
- We are here to help with CTC Traders API questions and to support you
- If we are not able to resolve your issue, we will find the help you need

Email us your questions at <a href="mailto:SDSTeam@hmrc.gov.uk?subject=Email enquiry from CTC Online Trader Test page">SDSTeam@hmrc.gov.uk</a> or send an online enquiry. We might ask for more detailed information when we respond.

## Submit your test results 

* The CTC Traders API can only be used in production for Great Britain (and not Northern Ireland which will go live shortly in May 2021).
* The CTC Traders API can be used for testing in Great Britain and also Northern Ireland.
* You can also use this [Application for Production Credentials Checklist](https://developer.qa.tax.service.gov.uk/guides/common-transit-convention-traders-testing-guide/figures/CTC%20Traders%20API%20Application%20for%20Productions%20Credentials%20v11%20dated%2021.4.21%20numbers%20match%20new%20CTC%20Traders%20API%20Test%20Pacl.docx) form to complete and email back to us your test results.

Once you are satisfied with your tests and are confident that your software is fully compatible with our API: 

1. Log all your evidence and results by filling in all the sections of this [checklist form](./../figures/CTC Traders API Application for Productions Credentials v11 dated 21.4.21 numbers match new CTC Traders API Test Pacl.docx) (this is a word document which is downloadable).
2. When you are ready, email your completed form to <a href="mailto:SDSTeam@hmrc.gov.uk?subject=Completed CTC API Application for Production Checklist form is attached to this email.">SDSTeam@hmrc.gov.uk</a>
3. We will check your test evidence using the information you give on this form.
4. When we are satisfied that you have done enough testing, you will be granted access to the live API system.

## If you need further help and support

Email our dedicated software developer support team at <a href="mailto:SDSTeam@hmrc.gov.uk">SDSTeam@hmrc.gov.uk</a> if you have any questions or difficulties or need additional clarification on this testing process.

For versioning information and a list of errors that you might receive please refer to the [CTC Traders API Definition](https://developer.service.hmrc.gov.uk/api-documentation/docs/api/service/common-transit-convention-traders/1.0) page.

Bookmark and save this page for future reference.
