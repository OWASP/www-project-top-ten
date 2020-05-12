---

document: OWASP Top Ten 2017
year: 2017
order: 8
title: A3:2017-Sensitive Data Exposure
lang: en
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017, Top Ten, A3:2017
exploitability: 2
prevalence: 3
detectability: 2
technical: 3

---

{% include risk_begin.html %}
{%- include risk_description.html pos="firstLeft" -%}
Rather than directly attacking crypto, attackers steal keys, execute man-in-the-middle attacks, or steal clear text data off the server, while in transit, or from the user’s client, e.g. browser. A manual attack is generally required. Previously retrieved password databases could be brute forced by Graphics Processing Units (GPUs). 
{%- include risk_description.html pos="mid" -%}
Over the last few years, this has been the most common impactful attack. The most common flaw is simply not encrypting sensitive data. When crypto is employed, weak key generation and management, and weak algorithm, protocol and cipher usage is common, particularly for weak password hashing storage techniques. For data in transit, server-side weaknesses are mainly easy to detect, but hard for data at rest.
{%- include risk_description.html pos="right" -%}
Failure frequently compromises all data that should have been protected. Typically, this information includes sensitive personal information (PII) data such as health records, credentials, personal data, and credit cards, which often require protection as defined by laws or regulations such as the EU GDPR or local privacy laws. 
{%- include risk_end.html -%}

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html token="isTheApplicationVulnerable" pos="firstLeft" -%}
The first thing is to determine the protection needs of data in transit and at rest. For example, passwords, credit card numbers, health records, personal information and business secrets require extra protection, particularly if that data falls under privacy laws, e.g. EU's General Data Protection Regulation (GDPR), or regulations, e.g. financial data protection such as PCI Data Security Standard (PCI DSS). For all such data:<br>
* Is any data transmitted in clear text? This concerns protocols such as HTTP, SMTP, and FTP. External internet traffic is especially dangerous. Verify all internal traffic e.g. between load balancers, web servers, or back-end systems.<br>
* Are any old or weak cryptographic algorithms used either by default or in older code?<br>
* Are default crypto keys in use, weak crypto keys generated or re-used, or is proper key management or rotation missing?<br>
* Is encryption not enforced, e.g. are any user agent (browser) security directives or headers missing?<br>
* Does the user agent (e.g. app, mail client) not verify if the received server certificate is valid?<br>

See [ASVS Crypto (V7), Data Protection (V9), and SSL/TLS (V10)](/www-project-application-security-verification-standard)

{%- include t10_subsection.html token="howToPrevent" pos="right" -%}
Do the following, at a minimum, and consult the references:<br>
* Classify data processed, stored or transmitted by an application. Identify which data is sensitive according to privacy laws, regulatory requirements, or business needs.<br>
* Apply controls as per the classification.<br>
* Don't store sensitive data unnecessarily. Discard it as soon as possible or use PCI DSS compliant tokenization or even truncation. Data that is not retained cannot be stolen.<br>
* Make sure to encrypt all sensitive data at rest.<br>
* Ensure up-to-date and strong standard algorithms, protocols, and keys are in place; use proper key management.<br>
* Encrypt all data in transit with secure protocols such as TLS with perfect forward secrecy (PFS) ciphers, cipher prioritization by the server, and secure parameters. Enforce encryption using directives like HTTP Strict Transport Security ([HSTS](https://cheatsheetseries.owasp.org/cheatsheets/HTTP_Strict_Transport_Security_Cheat_Sheet.html)).<br>
* Disable caching for response that contain sensitive data.<br>
* Store passwords using strong adaptive and salted hashing functions with a work factor (delay factor), such as [Argon2](https://www.cryptolux.org/index.php/Argon2), [scrypt](https://wikipedia.org/wiki/Scrypt), [bcrypt](https://wikipedia.org/wiki/Bcrypt) or [PBKDF2](https://wikipedia.org/wiki/PBKDF2).<br>
* Verify independently the effectiveness of configuration and settings.

{%- include t10_subsection.html token="exampleAttackScenarios" pos="left" -%}
**Scenario #1**: An application encrypts credit card numbers in a database using automatic database encryption. However, this data is automatically decrypted when retrieved, allowing a SQL injection flaw to retrieve credit card numbers in clear text.<br>

**Scenario #2**: A site doesn't use or enforce TLS for all pages or supports weak encryption. An attacker monitors network traffic (e.g. at an insecure wireless network), downgrades connections from HTTPS to HTTP, intercepts requests, and steals the user's session cookie. The attacker then replays this cookie and hijacks the user's (authenticated) session, accessing or modifying the user's private data. Instead of the above they could alter all transported data, e.g. the recipient of a money transfer.<br>

**Scenario #3**: The password database uses unsalted or simple hashes to store everyone's passwords. A file upload flaw allows an attacker to retrieve the password database. All the unsalted hashes can be exposed with a rainbow table of pre-calculated hashes. Hashes generated by simple or fast hash functions may be cracked by GPUs, even if they were salted.<br>

{%- include t10_subsection.html token="references" pos="right" -%}
**OWASP**<br>
* [OWASP Proactive Controls: Protect Data Everywhere](/www-project-proactive-controls/v3/en/c8-protect-data-everywhere)<br>
* [OWASP Application Security Verification Standard (V7, 9, 10)](/www-project-application-security-verification-standard)<br>
* [OWASP Cheat Sheet: Transport Layer Protection](https://cheatsheetseries.owasp.org/cheatsheets/Transport_Layer_Protection_Cheat_Sheet.html)<br>
* [OWASP Cheat Sheet: User Privacy Protection](https://cheatsheetseries.owasp.org/cheatsheets/User_Privacy_Protection_Cheat_Sheet.html)<br>
* [OWASP Cheat Sheet: Password and Cryptographic Storage](https://cheatsheetseries.owasp.org/cheatsheets/Password_Storage_Cheat_Sheet.html)<br>
* [OWASP Cheat Sheet: HSTS](https://cheatsheetseries.owasp.org/cheatsheets/HTTP_Strict_Transport_Security_Cheat_Sheet.html)<br>
* [OWASP Testing Guide: Testing for weak cryptography](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/09-Testing_for_Weak_Cryptography/README)<br>
<br>
**External**<br>
* [CWE-202: Exposure of sens. information through data queries](https://cwe.mitre.org/data/definitions/202.html)<br>
* [CWE-310: Cryptographic Issues](https://cwe.mitre.org/data/definitions/310.html)<br>
* [CWE-311: Missing Encryption](https://cwe.mitre.org/data/definitions/311.html)<br>
* [CWE-312: Cleartext Storage of Sensitive Information](https://cwe.mitre.org/data/definitions/312.html)<br>
* [CWE-319: Cleartext Transmission of Sensitive Information](https://cwe.mitre.org/data/definitions/319.html)<br>
* [CWE-326: Weak Encryption](https://cwe.mitre.org/data/definitions/326.html)<br>
* [CWE-327: Broken/Risky Crypto](https://cwe.mitre.org/data/definitions/327.html)<br>
* [CWE-359: Exposure of Private Information (Privacy Violation)](https://cwe.mitre.org/data/definitions/359.html)
{% include t10_subsection_end.html %}
