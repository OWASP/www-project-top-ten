---

layout: col-document
title: Release Notes
author:
contributors:
tags: OWASP Top Ten 2017, Top Ten
document: OWASP Top Ten 2017
order: 3

---

## What changed from 2013 to 2017?

Change has accelerated over the last four years, and the OWASP Top 10 needed to change. We've completely refactored the OWASP Top 10, revamped the methodology, utilized a new data call process, worked with the community, re-ordered our risks, re-written each risk from the ground up, and added references to frameworks and languages that are now commonly used. Over the last few years, the fundamental technology and architecture of applications has changed significantly:

* Microservices written in node.js and Spring Boot are replacing traditional monolithic applications. Microservices come with their own security challenges including establishing trust between microservices, containers, secret management, etc. Old code never expected to be accessible from the Internet is now sitting behind an API or RESTful web service to be consumed by Single Page Applications (SPAs) and mobile applications. Architectural assumptions by the code, such as trusted callers, are no longer valid.
* Single page applications, written in JavaScript frameworks such as Angular and React, allow the creation of highly modular feature-rich front ends. Client-side functionality that has traditionally been delivered server-side brings its own security challenges.
* JavaScript is now the primary language of the web with node.js running server side and modern web frameworks such as Bootstrap, Electron, Angular, and React running on the client.

### New issues, supported by data

[A4:2017-XML External Entities (XXE)](Top_10-2017_A4-XML_External_Entities_(XXE)) is a new category primarily supported by [source code analysis security testing tools(SAST)](https://www2.owasp.org/www-community/Source_Code_Analysis_Tools) data sets.

### New issues, supported by the community

We asked the community to provide insight into two forward looking weakness categories. After over 500 peer submissions, and removing issues that were already supported by data (such as Sensitive Data Exposure and XXE), the two new issues are: 

[A8:2017-Insecure Deserialization](https://www.owasp.org/index.php/Top_10-2017_A8-Insecure_Deserialization), which permits remote code execution or sensitive object manipulation on affected platforms.
[A10:2107-Insufficient Logging&Monitoring](https://www.owasp.org/index.php/Top_10-2017_A10-Insufficient_Logging%26Monitoring), the lack of which can prevent or significantly delay malicious activity and breach detection, incident response, and digital forensics.

### Merged or retired, but not forgotten

* [A4-Insecure Direct Object References](OWASP_Top_Ten_2013/Top_10_2013-A4-Insecure_Direct_Object_References) and [A7-Missing Function Level Access Control](OWASP_Top_Ten_2013/Top_10_2013-A7-Missing_Function_Level_Access_Control) merged into [A5:2017-Broken Access Control](OWASP_Top_Ten_2013/Top_10-2017_A5-Broken_Access_Control).
* [A8-Cross-Site Request Forgery (CSRF)](OWASP_Top_Ten_2013/Top_10_2013-A8-Cross-Site_Request_Forgery_(CSRF)), as many frameworks include CSRF defenses, it was found in only 5% of applications.
* [A10-Unvalidated Redirects and Forwards](OWASP_Top_Ten_2013/Top_10_2013-A10-Unvalidated_Redirects_and_Forwards), while found in approximately in 8% of applications, it was edged out overall by XXE.


| OWASP Top 10 - 2013 | ⇒ | OWASP Top 10 - 2017 |
|:---| :------: |:---|
| [A1-Injection](OWASP_Top_Ten_2013/Top_10-2013_A1-Injection) | ⇒ | [A1:2017-Injection](Top_10-2017_A1-Injection) |
| [A2-Broken Authentication and Session Management](OWASP_Top_Ten_2013/Top_10_2013-A2-Broken_Authentication_and_Session_Management) | ⇒ | [A2:2017-Broken Authentication](Top_10-2017_A2-Injection) |
| [A3-Cross-Site Scripting (XSS)](OWASP_Top_Ten_2013/Top_10_2013-A3-Cross-Site_Scripting_(XSS)) | ⇘ | [A3:2017-Sensitive Data Exposure](Top_10-2017_A3-Sensitive_Data_Exposure) |
| [A4-Insecure Direct Object References](OWASP_Top_Ten_2013/Top_10_2013-A4-Insecure_Direct_Object_References)- [Merged + A7] | ∪ | [A4:2017-XML External Entities (XXE)](Top_10-2017_A4-XML_External_Entities_(XXE)) [NEW] |
| [A5-Security Misconfiguration](OWASP_Top_Ten_2013/Top_10-2013_A5-Security_Misconfiguration) | ⇘ | [A5:2017-Broken Access Control](Top_10-2017_A5-Broken_Access_Control) [Merged] |
| [A6-Sensitive Data Exposure](OWASP_Top_Ten_2013/Top_10-2013_A6-Sensitive_Data_Exposure) | ⇗ | [A6:2017-Security_Misconfiguration](Top_10-2017_A6-Security_Misconfiguration) |
| [A7-Missing Function Level Access Control](OWASP_Top_Ten_2013/Top_10-2013_A7-Missing_Function_Level_Access_Control) [Merged + A4] | ∪ | [A7:2017-Cross-Site Scripting (XSS)](Top_10-2017_A7-Cross-Site_Scriting_(XSS)) |
| [A8-Cross-Site Request Forgery (CSRF)](OWASP_Top_Ten_2013/Top_10_2013-A8-Cross-Site_Request_Forgery_(CSRF)) [Dropped] | ☒ | [	A8:2017-Insecure Deserialization](Top_10-2017_A8-Insecure_Deserialization)  [NEW, Community] |
| [A9-Using Components with Known Vulnerabilities](OWASP_Top_Ten_2013/Top_10_2013-A9-Using_Components_with_Known_Vulnerabilities) | ⇒ | [A9:2017-Using Components with Known Vulnerabilities](Top_10-2017_A9-Using_Components_with_Known_Vulnerabilities) |
| [A10-Unvalidated Redirects and Forwards](OWASP_Top_Ten_2013/Top_10_2013-A10-Unvalidated_Redirects_and_Forwards) [Dropped] | ☒ | [A10:2017-Insufficient Logging&Monitoring](Top_10-2017_A10-Insufficient_Logging%26Monitoring) [NEW, Community] |

