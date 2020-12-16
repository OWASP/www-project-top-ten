---

document: OWASP Top Ten 2017
year: 2017
title: A2:2017-Broken Authentication
order: 7
lang: en
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017, Top Ten, A2:2017
exploitability: 3
prevalence: 2
detectability: 2
technical: 3
redirect_from:
  - OWASP_Top_Ten_2017/Top_10-2017_A2-Broken_Authentication.html
  - OWASP_Top_Ten_2017/Top_10-2017_A2-Broken_Authentication

---

{% include risk_begin.html %}
{%- include risk_description.html pos="firstLeft" -%}
Attackers have access to hundreds of millions of valid username and password combinations for credential stuffing, default administrative account lists, automated brute force, and dictionary attack tools. Session management attacks are well understood, particularly in relation to unexpired session tokens.
{%- include risk_description.html pos="mid" -%}
The prevalence of broken authentication is widespread due to the design and implementation of most identity and access controls. Session management is the bedrock of authentication and access controls, and is present in all stateful applications.<br>
Attackers can detect broken authentication using manual means and exploit them using automated tools with password lists and dictionary attacks.
{%- include risk_description.html pos="right" -%}
Attackers have to gain access to only a few accounts, or just one admin account to compromise the system. Depending on the domain of the application, this may allow money laundering, social security fraud, and identity theft, or disclose legally protected highly sensitive information.
{%- include risk_end.html -%}

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html token="isTheApplicationVulnerable" pos="firstLeft" -%}
Confirmation of the user's identity, authentication, and session management are critical to protect against authentication-related attacks. There may be authentication weaknesses if the application:<br>
* Permits automated attacks such as [credential stuffing](/www-community/attacks/Credential_stuffing), where the attacker has a list of valid usernames and passwords.<br>
* Permits brute force or other automated attacks.<br>
* Permits default, weak, or well-known passwords, such as "Password1" or "admin/admin“.<br>
* Uses weak or ineffective credential recovery and forgot-password processes, such as "knowledge-based answers", which cannot be made safe.<br>
* Uses plain text, encrypted, or weakly hashed passwords (see [A3:2017-Sensitive Data Exposure](A3_2017-Sensitive_Data_Exposure)).<br>
* Has missing or ineffective multi-factor authentication.<br>
* Exposes Session IDs in the URL (e.g., URL rewriting).<br>
* Does not rotate Session IDs after successful login.<br>
* Does not properly invalidate Session IDs. User sessions or authentication tokens (particularly single sign-on (SSO) tokens) aren't properly invalidated during logout or a period of inactivity.

{%- include t10_subsection.html token="howToPrevent" pos="right" -%}
* Where possible, implement multi-factor authentication to prevent automated, credential stuffing, brute force, and stolen credential re-use attacks.<br>
* Do not ship or deploy with any default credentials, particularly for admin users.<br>
* Implement weak-password checks, such as testing new or changed passwords against a list of the [top 10000 worst passwords](https://github.com/danielmiessler/SecLists/tree/master/Passwords).<br>
* Align password length, complexity and rotation policies with [NIST 800-63 B's guidelines in section 5.1.1 for Memorized Secrets](https://pages.nist.gov/800-63-3/sp800-63b.html#memsecret) or other modern, evidence based password policies.<br>
* Ensure registration, credential recovery, and API pathways are hardened against account enumeration attacks by using the same messages for all outcomes.<br>
* Limit or increasingly delay failed login attempts. Log all failures and alert administrators when credential stuffing, brute force, or other attacks are detected.<br>
* Use a server-side, secure, built-in session manager that generates a new random session ID with high entropy after login. Session IDs should not be in the URL, be securely stored and invalidated after logout, idle, and absolute timeouts.

{%- include t10_subsection.html token="exampleAttackScenarios" pos="left" -%}
**Scenario #1**: [Credential stuffing](/www-community/attacks/Credential_stuffing), the use of [lists of known passwords](https://github.com/danielmiessler/SecLists), is a common attack. If an application does not implement automated threat or credential stuffing protections, the application can be used as a password oracle to determine if the credentials are valid.<br>

**Scenario #2**: Most authentication attacks occur due to the continued use of passwords as a sole factor. Once considered best practices, password rotation and complexity requirements are viewed as encouraging users to use, and reuse, weak passwords. Organizations are recommended to stop these practices per NIST 800-63 and use multi-factor authentication.<br>

**Scenario #3**: Application session timeouts aren't set properly. A user uses a public computer to access an application. Instead of selecting “logout” the user simply closes the browser tab and walks away. An attacker uses the same browser an hour later, and the user is still authenticated.

{%- include t10_subsection.html token="references" pos="right" -%}
**OWASP**<br>
* [OWASP Proactive Controls: Implement Digital Identity](/www-project-proactive-controls/v3/en/c6-digital-identity)<br>
* [OWASP Application Security Verification Standard: V2 Authentication](/www-project-application-security-verification-standard)<br>
* [OWASP Application Security Verification Standard: V3 Session Management](/www-project-application-security-verification-standard)<br>
* [OWASP Testing Guide: Identity,](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/03-Identity_Management_Testing/README) [Authentication](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/04-Authentication_Testing/README)<br>
* [OWASP Cheat Sheet: Authentication](https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html)<br>
* [OWASP Cheat Sheet: Credential Stuffing](https://cheatsheetseries.owasp.org/cheatsheets/Credential_Stuffing_Prevention_Cheat_Sheet.html)<br>
* [OWASP Cheat Sheet: Forgot Password](https://cheatsheetseries.owasp.org/cheatsheets/Forgot_Password_Cheat_Sheet.html)<br>
* [OWASP Cheat Sheet: Session Management](https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html)<br>
* [OWASP Automated Threats Handbook](/www-project-automated-threats-to-web-applications/)<br>
<br>
**External**<br>
* [NIST 800-63b: 5.1.1 Memorized Secrets](https://pages.nist.gov/800-63-3/sp800-63b.html#memsecret)<br>
* [CWE-287: Improper Authentication](https://cwe.mitre.org/data/definitions/287.html)<br>
* [CWE-384: Session Fixation](https://cwe.mitre.org/data/definitions/384.html)
{% include t10_subsection_end.html %}