---

document: OWASP Top Ten 2017
year: 2017
order: 15
title: A10:2017-Insufficient Logging & Monitoring
lang: en
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017, Top Ten, A10:2017
exploitability: 2
prevalence: 3
detectability: 1
technical: 2

---

{% include risk_begin.html %}
{%- include risk_description.html pos="firstLeft" -%}
Exploitation of insufficient logging and monitoring is the bedrock of nearly every major incident.<br>
Attackers rely on the lack of monitoring and timely response to achieve their goals without being detected.
{%- include risk_description.html pos="mid" -%}
This issue is included in the Top 10 based on an [industry survey](https://owasp.blogspot.com/2017/08/owasp-top-10-2017-project-update.html).<br>
One strategy for determining if you have sufficient monitoring is to examine the logs following penetration testing. The testers' actions should be recorded sufficiently to understand what damages they may have inflicted.
{%- include risk_description.html pos="right" -%}
Most successful attacks start with vulnerability probing. Allowing such probes to continue can raise the likelihood of successful exploit to nearly 100%.<br>
In 2016, identifying a breach took an [average of 191 days](https://www-01.ibm.com/common/ssi/cgi-bin/ssialias?htmlfid=SEL03130WWEN&) – plenty of time for damage to be inflicted.
{%- include risk_end.html -%}

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html token="isTheApplicationVulnerable" pos="firstLeft" -%}
Insufficient logging, detection, monitoring and active response occurs any time:<br>
* Auditable events, such as logins, failed logins, and high-value transactions are not logged.<br>
* Warnings and errors generate no, inadequate, or unclear log messages.<br>
* Logs of applications and APIs are not monitored for suspicious activity.<br>
* Logs are only stored locally.<br>
* Appropriate alerting thresholds and response escalation processes are not in place or effective.<br>
* Penetration testing and scans by [DAST](/www-community/Vulnerability_Scanning_Tools) tools (such as [OWASP ZAP](/www-project-zap)) do not trigger alerts.<br>
* The application is unable to detect, escalate, or alert for active attacks in real time or near real time.<br>

You are vulnerable to information leakage if you make logging and alerting events visible to a user or an attacker (see [A3:2017-Sensitive Data Exposure](Top_10-2017_A3-Sensitive_Data_Exposure)).

{%- include t10_subsection.html token="howToPrevent" pos="right" -%}
As per the risk of the data stored or processed by the application:<br>
* Ensure all login, access control failures, and server-side input validation failures can be logged with sufficient user context to identify suspicious or malicious accounts, and held for sufficient time to allow delayed forensic analysis.<br>
* Ensure that logs are generated in a format that can be easily consumed by a centralized log management solutions.<br>
* Ensure high-value transactions have an audit trail with integrity controls to prevent tampering or deletion, such as append-only database tables or similar.<br>
* Establish effective monitoring and alerting such that suspicious activities are detected and responded to in a timely fashion.<br>
* Establish or adopt an incident response and recovery plan, such as [NIST 800-61 rev 2](https://csrc.nist.gov/publications/detail/sp/800-61/rev-2/final) or later.<br>

There are commercial and open source application protection frameworks such as [OWASP AppSensor](/www-project-appsensor) ([old wiki](https://wiki.owasp.org/index.php/OWASP_AppSensor_Project)), web application firewalls such as ModSecurity with the [OWASP ModSecurity Core Rule Set](/www-project-modsecurity-core-rule-set), and log correlation software with custom dashboards and alerting.

{%- include t10_subsection.html token="exampleAttackScenarios" pos="left" -%}
**Scenario #1**: An open source project forum software run by a small team was hacked using a flaw in its software. The attackers managed to wipe out the internal source code repository containing the next version, and all of the forum contents. Although source could be recovered, the lack of monitoring, logging or alerting led to a far worse breach. The forum software project is no longer active as a result of this issue.<br>

**Scenario #2**: An attacker uses scans for users using a common password. They can take over all accounts using this password. For all other users, this scan leaves only one false login behind. After some days, this may be repeated with a different password.<br>

**Scenario #3**: A major US retailer reportedly had an internal malware analysis sandbox analyzing attachments. The sandbox software had detected potentially unwanted software, but no one responded to this detection. The sandbox had been producing warnings for some time before the breach was detected due to fraudulent card transactions by an external bank.

{%- include t10_subsection.html token="references" pos="right" -%}
**OWASP**<br>
* [OWASP Proactive Controls: Implement Logging and Monitoring](/www-project-proactive-controls/v3/en/c9-security-logging.html)<br>
* [OWASP Application Security Verification Standard: V8 Logging and Monitoring](/www-project-application-security-verification-standard)<br>
* [OWASP Testing Guide: Testing for Detailed Error Code](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/08-Testing_for_Error_Handling/01-Testing_for_Error_Code)<br>
* [OWASP Cheat Sheet: Logging](https://cheatsheetseries.owasp.org/cheatsheets/Logging_Cheat_Sheet.html)<br>
<br>
**External**<br>
* [CWE-223: Omission of Security-relevant Information](https://cwe.mitre.org/data/definitions/223.html)<br>
* [CWE-778: Insufficient Logging](https://cwe.mitre.org/data/definitions/778.html)
{% include t10_subsection_end.html %}