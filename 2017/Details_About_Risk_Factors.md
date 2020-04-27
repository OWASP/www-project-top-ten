---

document: OWASP Top Ten 2017
year: 2017
order: 21
title: Details About Risk Factors
lang: en
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017, Top Ten

---
{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html text="Top 10 Risk Factor Summary" pos="firstWhole" -%}
The following table presents a summary of the 2017 Top 10 Application Security Risks, and the risk factors we have assigned to each risk. 
These factors were determined based on the available statistics and the experience of the OWASP Top 10 team. 
To understand these risks for a particular application or organization, <u>you must consider your own specific threat agents and business impacts</u>.
Even severe software weaknesses may not present a serious risk if there are no threat agents in a position to perform the necessary attack or the business impact is negligible for the assets involved.

{% include risk_factor_summary_table.html %}

{%- include t10_subsection.html text="Project Sponsorship" pos="whole" -%}
The Top 10 covers a lot of ground, but there are many other risks you should consider and evaluate in your organization. Some of these have appeared in previous versions of the Top 10, and others have not, including new attack techniques that are being identified all the time. Other important application security risks (ordered by CWE-ID) that you should additionally consider include:<br>
* [CWE-352: Cross-Site Request Forgery (CSRF)](https://cwe.mitre.org/data/definitions/352.html)<br>
* [CWE-400: Uncontrolled Resource Consumption ('Resource Exhaustion', 'AppDoS')](https://cwe.mitre.org/data/definitions/400.html)<br>
* [CWE-434: Unrestricted Upload of File with Dangerous Type](https://cwe.mitre.org/data/definitions/434.html)<br>
* [CWE-451: User Interface (UI) Misrepresentation of Critical Information (Clickjacking and others)](https://cwe.mitre.org/data/definitions/451.html)<br>
* [CWE-601: Unvalidated Forward and Redirects](https://cwe.mitre.org/data/definitions/601.html)<br>
* [CWE-799: Improper Control of Interaction Frequency (Anti-Automation)](https://cwe.mitre.org/data/definitions/799.html)<br>
* [CWE-829: Inclusion of Functionality from Untrusted Control Sphere (3rd Party Content)](https://cwe.mitre.org/data/definitions/829.html)<br>
* [CWE-918: Server-Side Request Forgery (SSRF)](https://cwe.mitre.org/data/definitions/918.html)
{% include t10_subsection_end.html %}

