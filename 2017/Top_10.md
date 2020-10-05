---

document: OWASP Top Ten 2017
year: 2017
order: 5
title: 2017 Top 10
lang: en
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017, Top Ten
redirect_from:
  - OWASP_Top_Ten_2017/Top_10.html
  - OWASP_Top_Ten_2017/Top_10
  - OWASP_Top_Ten_2017/Top_10-2017_Top_10.html
  - OWASP_Top_Ten_2017/Top_10-2017_Top_10

---

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html text="OWASP Top 10 Application Security Risks - 2017" pos="firstWhole" -%}
<br>
{% include t10_subsection_inner_round_box.html
   topic='[A1:2017-Injection](A1_2017-Injection)'
   description="Injection flaws, such as SQL, NoSQL, OS, and LDAP injection, occur when untrusted data is sent to an interpreter as part of a command or query. The attacker's hostile data can trick the interpreter into executing unintended commands or accessing data without proper authorization."
%}
{% include t10_subsection_inner_round_box.html
   topic='[A2:2017-Broken Authentication](A2_2017-Broken_Authentication)'
   description="Application functions related to authentication and session management are often implemented incorrectly, allowing attackers to compromise passwords, keys, or session tokens, or to exploit other implementation flaws to assume other users' identities temporarily or permanently."
%}
{% include t10_subsection_inner_round_box.html
   topic='[A3:2017-Sensitive Data Exposure](A3_2017-Sensitive_Data_Exposure)'
   description="Many web applications and APIs do not properly protect sensitive data, such as financial, healthcare, and PII. Attackers may steal or modify such weakly protected data to conduct credit card fraud, identity theft, or other crimes. Sensitive data may be compromised without extra protection, such as encryption at rest or in transit, and requires special precautions when exchanged with the browser."
%}
{% include t10_subsection_inner_round_box.html
   topic='[A4:2017-XML External Entities (XXE)](A4_2017-XML_External_Entities_(XXE))'
   description="Many older or poorly configured XML processors evaluate external entity references within XML documents. External entities can be used to disclose internal files using the file URI handler, internal file shares, internal port scanning, remote code execution, and denial of service attacks."
%}
{% include t10_subsection_inner_round_box.html
   topic='[A5:2017-Broken Access Control](A5_2017-Broken_Access_Control)'
   description="Restrictions on what authenticated users are allowed to do are often not properly enforced. Attackers can exploit these flaws to access unauthorized functionality and/or data, such as access other users' accounts, view sensitive files, modify other users' data, change access rights, etc."
%}
{% include t10_subsection_inner_round_box.html
   topic='[A6:2017-Security Misconfiguration](A6_2017-Security_Misconfiguration)'
   description="Security misconfiguration is the most commonly seen issue. This is commonly a result of insecure default configurations, incomplete or ad hoc configurations, open cloud storage, misconfigured HTTP headers, and verbose error messages containing sensitive information. Not only must all operating systems, frameworks, libraries, and applications be securely configured, but they must be patched/upgraded in a timely fashion."
%}
{% include t10_subsection_inner_round_box.html
   topic='[A7:2017-Cross-Site Scripting (XSS)](A7_2017-Cross-Site_Scripting_(XSS))'
   description="XSS flaws occur whenever an application includes untrusted data in a new web page without proper validation or escaping, or updates an existing web page with user-supplied data using a browser API that can create HTML or JavaScript. XSS allows attackers to execute scripts in the victim's browser which can hijack user sessions, deface web sites, or redirect the user to malicious sites."
%}
{% include t10_subsection_inner_round_box.html
   topic='[A8:2017-Insecure Deserialization](A8_2017-Insecure_Deserialization)'
   description="Insecure deserialization often leads to remote code execution. Even if deserialization flaws do not result in remote code execution, they can be used to perform attacks, including replay attacks, injection attacks, and privilege escalation attacks."
%}
{% include t10_subsection_inner_round_box.html
   topic='[A9:2017-Using Components with Known Vulnerabilities](A9_2017-Using_Components_with_Known_Vulnerabilities)'
   description="Components, such as libraries, frameworks, and other software modules, run with the same privileges as the application. If a vulnerable component is exploited, such an attack can facilitate serious data loss or server takeover. Applications and APIs using components with known vulnerabilities may undermine application defenses and enable various attacks and impacts."
%}
{% include t10_subsection_inner_round_box.html
   topic='[A10:2017-Insufficient Logging &amp; Monitoring](A10_2017-Insufficient_Logging%2526Monitoring)'
   description="Insufficient logging and monitoring, coupled with missing or ineffective integration with incident response, allows attackers to further attack systems, maintain persistence, pivot to more systems, and tamper, extract, or destroy data. Most breach studies show time to detect a breach is over 200 days, typically detected by external parties rather than internal processes or monitoring."
%}
{% include t10_subsection_end.html %}
