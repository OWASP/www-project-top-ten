---

document: OWASP Top Ten 2017 (es)
year: 2017
order: 4
en: Release Notes
title: Notas sobre la versión
lang: es
layout: full-width-document
author:
contributors: vtamara
tags: OWASP Top Ten 2017 (es), Top Ten, es
redirect_from:
  - 2017/es/Release_Notes

---
{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html text="¿Qué ha cambiado de 2013 a 2017?" pos="firstWhole" -%}
Change has accelerated over the last four years, and the OWASP Top 10 needed to change. We've completely refactored the OWASP Top 10, revamped the methodology, utilized a new data call process, worked with the community, re-ordered our risks, re-written each risk from the ground up, and added references to frameworks and languages that are now commonly used. Over the last few years, the fundamental technology and architecture of applications has changed significantly:<br>
* Microservices written in node.js and Spring Boot are replacing traditional monolithic applications. Microservices come with their own security challenges including establishing trust between microservices, containers, secret management, etc. Old code never expected to be accessible from the Internet is now sitting behind an API or RESTful web service to be consumed by Single Page Applications (SPAs) and mobile applications. Architectural assumptions by the code, such as trusted callers, are no longer valid.<br>
* Single page applications, written in JavaScript frameworks such as Angular and React, allow the creation of highly modular feature-rich front ends. Client-side functionality that has traditionally been delivered server-side brings its own security challenges.<br>
* JavaScript is now the primary language of the web with node.js running server side and modern web frameworks such as Bootstrap, Electron, Angular, and React running on the client.<br>
<br>
**New issues, supported by data:**<br>
* [A4:2017-XML External Entities (XXE)](A4_2017-XML_External_Entities_(XXE)) is a new category primarily supported by [source code analysis security testing tools (SAST)](https://owasp.org/www-community/Source_Code_Analysis_Tools) data sets.<br>
<br>
**New issues, supported by the community:**
We asked the community to provide insight into two forward looking weakness categories. After over 500 peer submissions, and removing issues that were already supported by data (such as Sensitive Data Exposure and XXE), the two new issues are:<br>
* [A8:2017-Insecure Deserialization](A8_2017-Insecure_Deserialization), which permits remote code execution or sensitive object manipulation on affected platforms.<br>
* [A10:2107-Insufficient Logging &amp; Monitoring](A10_2017-Insufficient_Logging%2526Monitoring), the lack of which can prevent or significantly delay malicious activity and breach detection, incident response, and digital forensics.<br>
<br>
**Merged or retired, but not forgotten:**<br>
* [A4-Insecure Direct Object References](https://wiki.owasp.org/index.php/Top_10_2013-A4-Insecure_Direct_Object_References) and [A7-Missing Function Level Access Control](https://wiki.owasp.org/index.php/Top_10_2013-A7-Missing_Function_Level_Access_Control) merged into [A5:2017-Broken Access Control](A5_2017-Broken_Access_Control).<br>
* [A8-Cross-Site Request Forgery (CSRF)](https://wiki.owasp.org/index.php/Top_10_2013-A8-Cross-Site_Request_Forgery_(CSRF)), as many frameworks include [CSRF](/www-community/attacks/csrf) defenses, it was found in only 5% of applications.<br>
* [A10-Unvalidated Redirects and Forwards](https://wiki.owasp.org/index.php/Top_10_2013-A10-Unvalidated_Redirects_and_Forwards), while found in approximately in 8% of applications, it was edged out overall by XXE.<br>

{% include t10_subsection_end.html %}

{% include changes_from_2013_to_2017_table.html %}
