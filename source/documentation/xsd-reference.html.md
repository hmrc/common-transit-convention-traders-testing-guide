---
title: XSD reference files | Common Transit Convention API end-to-end service guide
weight: 2
---

# XSD reference files

You can check your XML files against our XSD files.

Use these to validate your XML. Please note, there are some known omissions. These are all captured in the mapping document.

``NumOfLoaLisHEA304`` has been included in error in:  

- IE015 (CC015B)
- IE029 (CC0029B)
- IE043 (CC0043A)
- IE051 (CC051)   

You can ignore this field.

### [Download zip file](ctc-traders-api-xsds.zip) with all the CTC Traders API XSDs.

Alternatively you can review each XSD file individually using the links below.

## Validate XML posted into the API:

| **Title** | **Description** |
|------|-------------|
|**[Arrival notification message CC007A (IE007)](https://github.com/hmrc/common-transit-convention-traders/blob/master/conf/xsd/cc007a.xsd)** |Send an Arrival Notification message from the trader at destination to the office at destination|
|**[Declaration data cancellation request CC014A (IE014)](https://github.com/hmrc/common-transit-convention-traders/blob/master/conf/xsd/cc014a.xsd)**| Send a message from the trader at departure asking the office at departure to cancel declaration data|
|**[Declaration data message CC015B (IE015)](https://github.com/hmrc/common-transit-convention-traders/blob/master/conf/xsd/cc015b.xsd)**|Send a declaration data message from the trader at departure to the office at departure so they can can start the transit|
|**[Unloading remarks message CC044A (IE044)](https://github.com/hmrc/common-transit-convention-traders/blob/master/conf/xsd/cc044a.xsd)** |Send a message from the trader at destination to the office at to let the office at destination know that the goods have been unloaded (IE044)|


## Validate arrivals XML from NCTS:  

| **Title** | **Description** |
|------|-------------|
|**[Arrival notification rejection message CC008A (IE008)](https://github.com/hmrc/transit-movements-trader-at-destination/blob/master/conf/xsd/CC008A.xsd)**|Get a message from the office of destination to the trader at destination rejecting the traders Arrival Notification (IE007)|
|**[Goods release notification CC025A (IE025)](https://github.com/hmrc/transit-movements-trader-at-destination/blob/master/conf/xsd/CC025A.xsd)**| Get a message from the office at destination to the trader at destination that they can release the goods|
|**[Unloading permission message CC043A (IE043)](https://github.com/hmrc/transit-movements-trader-at-destination/blob/master/conf/xsd/CC043A.xsd)**| Get an unloading permission message from the office at destination to the trader at destination |
|**[Unloading remarks rejection message CC058A (IE058)](https://github.com/hmrc/transit-movements-trader-at-destination/blob/master/conf/xsd/CC058A.xsd)**| Get a message from the office at destination to the trader at destination that there are errors in the trader's unloading remarks message (IE044)|



## Validate departures XML from NCTS:

| **Title** | **Description** |
|------|-------------|
|**[Cancellation decision message CC009A (IE009)](https://github.com/hmrc/transits-movements-trader-at-departure/blob/master/conf/xsd/CC009A.xsd)**| Get a message from the office at departure in reference to a cancellation request (IE014)|
|**[Declaration rejection message CC016A (IE016)](https://github.com/hmrc/transits-movements-trader-at-departure/blob/master/conf/xsd/CC016A.xsd)**| Get a message from the office at departure to the trader at departure rejecting a Declaration data message (IE015)|
|**[MRN allocated message CC028A (IE028)](https://github.com/hmrc/transits-movements-trader-at-departure/blob/master/conf/xsd/CC028A.xsd)**| Get a message from the office at departure to the trader at departure allocating a Movement Reference Number (MRN)|
|**[Goods released for transit CC029B (IE029)](https://github.com/hmrc/transits-movements-trader-at-departure/blob/master/conf/xsd/CC029B.xsd)**| Get a message from the office at departure to the trader at departure to say the goods are released for transit|
|**[Write-off notification CC045A (IE045)](https://github.com/hmrc/transits-movements-trader-at-departure/blob/master/conf/xsd/CC045A.xsd)**| Get a message from the office at departure to the trader at departure that the transit movement is finished|
|**[No release for transit CC051B (IE051)](https://github.com/hmrc/transits-movements-trader-at-departure/blob/master/conf/xsd/CC051B.xsd)**| Get a message from the office at departure to the trader at departure that the movement cannot be released for transit|
|**[Guarantee not valid CC055A (IE055)](https://github.com/hmrc/transits-movements-trader-at-departure/blob/master/conf/xsd/CC055A.xsd)**| Get a message from the office of departure to the trader at departure that their guarantee is not valid|
|**[Control decision notification CC060A (IE060)](https://github.com/hmrc/transits-movements-trader-at-departure/blob/master/conf/xsd/CC060A.xsd)**| Get a message from the office at departure to tell the trader at departure they wish to carry out a control of the goods|
|**[Declaration received CC928A (IE928)](https://github.com/hmrc/transits-movements-trader-at-departure/blob/master/conf/xsd/CC928A.xsd)**| Get a positive acknowledgement of a departure declaration message (IE015)|
