---

document: OWASP Top Ten 2017
year: 2017
order: 9
title: A4:2017-XML External Entities (XXE)
lang: en
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017, Top Ten, A4:2017
exploitability: 2
prevalence: 2
detectability: 3
technical: 3
redirect_from:
  - OWASP_Top_Ten_2017/Top_10-2017_A4-XML_External_Entities_(XXE).html
  - OWASP_Top_Ten_2017/Top_10-2017_A4-XML_External_Entities_(XXE)

---

{% include risk_begin.html %}
{%- include risk_description.html pos="firstLeft" -%}
Attackers can exploit vulnerable XML processors if they can upload XML or include hostile content in an XML document, exploiting vulnerable code, dependencies or integrations.
{%- include risk_description.html pos="mid" -%}
By default, many older XML processors allow specification of an external entity, a URI that is dereferenced and evaluated during XML processing.<br>
[SAST](/www-community/Source_Code_Analysis_Tools) tools can discover this issue by inspecting dependencies and configuration. [DAST](/www-community/Vulnerability_Scanning_Tools) tools require additional manual steps to detect and exploit this issue. Manual testers need to be trained in how to test for XXE, as it not commonly tested as of 2017.
{%- include risk_description.html pos="right" -%}
These flaws can be used to extract data, execute a remote request from the server, scan internal systems, perform a denial-of-service attack, as well as execute other attacks. The business impact depends on the protection needs of all affected application and data.
{%- include risk_end.html -%}

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html token="isTheApplicationVulnerable" pos="firstLeft" -%}
Applications and in particular XML-based web services or downstream integrations might be vulnerable to attack if:<br>
* The application accepts XML directly or XML uploads, especially from untrusted sources, or inserts untrusted data into XML documents, which is then parsed by an XML processor.<br>
* Any of the XML processors in the application or SOAP based web services has [document type definitions (DTDs)](https://en.wikipedia.org/wiki/Document_type_definition) enabled. As the exact mechanism for disabling DTD processing varies by processor, it is good practice to consult a reference such as the [OWASP Cheat Sheet 'XXE Prevention'](https://cheatsheetseries.owasp.org/cheatsheets/XML_External_Entity_Prevention_Cheat_Sheet.html).<br>
* If the application uses SAML for identity processing within federated security or single sign on (SSO) purposes. SAML uses XML for identity assertions, and may be vulnerable.<br>
* If the application uses SOAP prior to version 1.2, it is likely susceptible to XXE attacks if XML entities are being passed to the SOAP framework.<br>
Being vulnerable to XXE attacks likely means that the application is vulnerable to denial of service attacks including the Billion Laughs attack

{%- include t10_subsection.html token="howToPrevent" pos="right" -%}
Developer training is essential to identify and mitigate XXE. Besides that, preventing XXE requires:<br>
* Whenever possible, use less complex data formats such as JSON, and avoiding serialization of sensitive data.<br>
* Patch or upgrade all XML processors and libraries in use by the application or on the underlying operating system. Use dependency checkers. Update SOAP to SOAP 1.2 or higher.<br>
* Disable XML external entity and DTD processing in all XML parsers in the application, as per the [OWASP Cheat Sheet 'XXE Prevention'](https://cheatsheetseries.owasp.org/cheatsheets/XML_External_Entity_Prevention_Cheat_Sheet.html).<br>
* Implement positive ("whitelisting") server-side input validation, filtering, or sanitization to prevent hostile data within XML documents, headers, or nodes.<br>
* Verify that XML or XSL file upload functionality validates incoming XML using XSD validation or similar.<br>
* [SAST](/www-community/Source_Code_Analysis_Tools) tools can help detect XXE in source code, although manual code review is the best alternative in large, complex applications with many integrations.<br>
If these controls are not possible, consider using virtual patching, API security gateways, or Web Application Firewalls (WAFs) to detect, monitor, and block XXE attacks.

{%- include t10_subsection.html token="exampleAttackScenarios" pos="left" -%}
Numerous public XXE issues have been discovered, including attacking embedded devices. XXE occurs in a lot of unexpected places, including deeply nested dependencies. The easiest way is to upload a malicious XML file, if accepted:<br>

**Scenario #1**: The attacker attempts to extract data from the server:<br>

    {% include code_begin.html -%} &lt;?xml version="1.0" encoding="ISO-8859-1"?&gt; {%- include code_end.html %}
    {% include code_begin.html -%} <!DOCTYPE foo [     {%- include code_end.html %}
    {% include code_begin.html -%} <!ELEMENT foo ANY > {%- include code_end.html %}
    {% include code_red_begin.html -%} <!ENTITY xxe SYSTEM "file:///etc/passwd" >]> {%- include code_red_end.html %}
    {% include code_red_begin.html -%} &lt;foo&gt;&xxe;&lt;/foo&gt; {%- include code_red_end.html %}

**Scenario #2**: An attacker probes the server's private network by changing the above ENTITY line to:<br>

    {% include code_red_begin.html -%}<!ENTITY xxe SYSTEM "https://192.168.1.1/private" >]>{%- include code_red_end.html %}

**Scenario #3**: An attacker attempts a denial-of-service attack by including a potentially endless file:<br>

    {% include code_red_begin.html -%}<!ENTITY xxe SYSTEM "file:///dev/random" >]>{%- include code_red_end.html %}


{%- include t10_subsection.html token="references" pos="right" -%}
**OWASP**<br>
* [OWASP Application Security Verification Standard](/www-project-application-security-verification-standard)<br>
* [OWASP Testing Guide: Testing for XML Injection](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/07-Input_Validation_Testing/07-Testing_for_XML_Injection)<br>
* [OWASP XXE Vulnerability](/www-community/vulnerabilities/XML_External_Entity_(XXE)_Processing)<br>
* [OWASP Cheat Sheet: XXE Prevention](https://cheatsheetseries.owasp.org/cheatsheets/XML_External_Entity_Prevention_Cheat_Sheet.html)<br>
* [OWASP Cheat Sheet: XML Security](https://cheatsheetseries.owasp.org/cheatsheets/XML_Security_Cheat_Sheet.html)<br>
<br>
**External**<br>
* [CWE-611: Improper Restriction of XXE](https://cwe.mitre.org/data/definitions/611.html)<br>
* [Billion Laughs Attack](https://en.wikipedia.org/wiki/Billion_laughs_attack)<br>
* [SAML Security XML External Entity Attack](https://secretsofappsecurity.blogspot.tw/2017/01/saml-security-xml-external-entity-attack.html)<br>
* [Detecting and exploiting XXE in SAML Interfaces](https://web-in-security.blogspot.tw/2014/11/detecting-and-exploiting-xxe-in-saml.html)<br>
{% include t10_subsection_end.html %}
