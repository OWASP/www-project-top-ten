---

document: OWASP Top Ten 2017
year: 2017
order: 10
title: A5:2017-Broken Access Control
lang: en
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017, Top Ten, A5:2017
exploitability: 2
prevalence: 2
detectability: 2
technical: 3

---

{% include risk_begin.html %}
{%- include risk_description.html pos="firstLeft" -%}
Exploitation of access control is a core skill of attackers. [SAST](/www-community/Source_Code_Analysis_Tools) and [DAST](/www-community/Vulnerability_Scanning_Tools) tools can detect the absence of access control but cannot verify if it is functional when it is present. Access control is detectable using manual means, or possibly through automation for the absence of access controls in certain frameworks.
{%- include risk_description.html pos="mid" -%} Access control weaknesses are common due to the lack of automated detection, and lack of effective functional testing by application developers.<br>
Access control detection is not typically amenable to automated static or dynamic testing. Manual testing is the best way to detect missing or ineffective access control, including HTTP method (GET vs PUT, etc), controller, direct object references, etc.
{%- include risk_description.html pos="right" -%}
The technical impact is attackers acting as users or administrators, or users using privileged functions, or creating, accessing, updating or deleting every record.<br>
The business impact depends on the protection needs of the application and data.
{%- include risk_end.html -%}

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html token="isTheApplicationVulnerable" pos="firstLeft" -%}
Access control enforces policy such that users cannot act outside of their intended permissions. Failures typically lead to unauthorized information disclosure, modification or destruction of all data, or performing a business function outside of the limits of the user. Common access control vulnerabilities include:<br>
* Bypassing access control checks by modifying the URL, internal application state, or the HTML page, or simply using a custom API attack tool.<br>
* Allowing the primary key to be changed to another's users record, permitting viewing or editing someone else's account.<br>
* Elevation of privilege. Acting as a user without being logged in, or acting as an admin when logged in as a user.<br>
* Metadata manipulation, such as replaying or tampering with a JSON Web Token (JWT) access control token or a cookie or hidden field manipulated to elevate privileges, or abusing JWT invalidation.<br>
* CORS misconfiguration allows unauthorized API access.<br>
* Force browsing to authenticated pages as an unauthenticated user or to privileged pages as a standard user. Accessing API with missing access controls for POST, PUT and DELETE.

{%- include t10_subsection.html token="howToPrevent" pos="right" -%}
Access control is only effective if enforced in trusted server-side code or server-less API, where the attacker cannot modify the access control check or metadata.<br>
* With the exception of public resources, deny by default.<br>
* Implement access control mechanisms once and re-use them throughout the application, including minimizing CORS usage.<br>
* Model access controls should enforce record ownership, rather than accepting that the user can create, read, update, or delete any record.<br>
* Unique application business limit requirements should be enforced by domain models.<br>
* Disable web server directory listing and ensure file metadata (e.g. .git) and backup files are not present within web roots.<br>
* Log access control failures, alert admins when appropriate (e.g. repeated failures).<br>
* Rate limit API and controller access to minimize the harm from automated attack tooling.<br>
* JWT tokens should be invalidated on the server after logout.<br>
Developers and QA staff should include functional access control unit and integration tests.

{%- include t10_subsection.html token="exampleAttackScenarios" pos="left" -%}
**Scenario #1**: The application uses unverified data in a SQL call that is accessing account information:<br>
    {% include code_red_begin.html -%} pstmt.setString(1, request.getParameter("acct")); {%- include code_red_end.html %}
    {% include code_red_begin.html -%} ResultSet results = pstmt.executeQuery( ); {%- include code_red_end.html %}

An attacker simply modifies the 'acct' parameter in the browser to send whatever account number they want. If not properly verified, the attacker can access any user's account.<br>
    {% include code_red_begin.html -%} http://example.com/app/accountInfo?acct=notmyacct {%- include code_red_end.html %}

**Scenario #2**: An attacker simply force browses to target URLs. Admin rights are required for access to the admin page.<br>
    {% include code_red_begin.html -%} http://example.com/app/getappInfo {%- include code_red_end.html %}
    {% include code_red_begin.html -%} http://example.com/app/admin_getappInfo {%- include code_red_end.html %}

If an unauthenticated user can access either page, it’s a flaw. If a non-admin can access the admin page, this is a flaw.

{%- include t10_subsection.html token="references" pos="right" -%}
**OWASP**<br>
* [OWASP Proactive Controls: Enforce Access Controls](/www-project-proactive-controls/v3/en/c7-enforce-access-controls)<br>
* [OWASP Application Security Verification Standard: V4 Access Control](/www-project-application-security-verification-standard)<br>
* [OWASP Testing Guide: Authorization Testing](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/05-Authorization_Testing/README)<br>
* [OWASP Cheat Sheet: Access Control](https://cheatsheetseries.owasp.org/cheatsheets/Access_Control_Cheat_Sheet.html)<br>
<br>
**External**<br>
* [CWE-22: Improper Limitation of a Pathname to a Restricted Directory ('Path Traversal')](https://cwe.mitre.org/data/definitions/22.html)<br>
* [CWE-284: Improper Access Control (Authorization)](https://cwe.mitre.org/data/definitions/284.html)<br>
* [CWE-285: Improper Authorization](https://cwe.mitre.org/data/definitions/285.html)<br>
* [CWE-639: Authorization Bypass Through User-Controlled Key](https://cwe.mitre.org/data/definitions/639.html)<br>
* [PortSwigger: Exploiting CORS misconfiguration](https://portswigger.net/blog/exploiting-cors-misconfigurations-for-bitcoins-and-bounties)
{% include t10_subsection_end.html %}