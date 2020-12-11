---
title: Get support and help | CTC APIs End-to-End Service Guide
weight: 5
---
# Sending an Arrivals Notification diagram

Version 0.1 3rd June 2020
***


This diagram shows how an arrival notification message is sent by the user using third party software to the NCTS, using the CTC API.

<img src="../figures/sending-an-arrival-notification.svg"/>

1. Software redirects the user to the Government Gateway for login.   
2. Once authenticated, Government Gateway redirects back to 3rd party software.
3. User sends an Arrival Notification.
4. Arrival Notification message passes through the CTC API.
5. Arrival Notification is received by the NCTS.
6. An accepted status passes through the CTC Traders API.
7. A message arrives at the third party software to inform the user that the Arrival Notification has been received but not yet processed.
