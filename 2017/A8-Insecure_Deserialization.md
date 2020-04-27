---

document: OWASP Top Ten 2017
year: 2017
order: 13
title: A8:2017-Insecure Deserialization
lang: en
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017, Top Ten, A8:2017
exploitability: 1
prevalence: 2
detectability: 2
technical: 3

---

{% include risk_begin.html %}
{%- include risk_description.html pos="firstLeft" -%}
Exploitation of deserialization is somewhat difficult, as off the shelf exploits rarely work without changes or tweaks to the underlying exploit code.
{%- include risk_description.html pos="mid" -%}
This issue is included in the Top 10 based on an [industry survey](https://owasp.blogspot.com/2017/08/owasp-top-10-2017-project-update.html) and not on quantifiable data.<br>
Some tools can discover deserialization flaws, but human assistance is frequently needed to validate the problem. It is expected that prevalence data for deserialization flaws will increase as tooling is developed to help identify and address it.
{%- include risk_description.html pos="right" -%}
The impact of deserialization flaws cannot be overstated. These flaws can lead to remote code execution attacks, one of the most serious attacks possible.<br>
The business impact depends on the protection needs of the application and data.
{%- include risk_end.html -%}

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html token="isTheApplicationVulnerable" pos="firstLeft" -%}
Applications and APIs will be vulnerable if they deserialize hostile or tampered objects supplied by an attacker. This can result in two primary types of attacks:<br>
* Object and data structure related attacks where the attacker modifies application logic or achieves arbitrary remote code execution if there are classes available to the application that can change behavior during or after deserialization.<br>
* Typical data tampering attacks such as access-control-related attacks where existing data structures are used but the content is changed.<br>

Serialization may be used in applications for:<br>
* Remote- and inter-process communication (RPC/IPC)<br>
* Wire protocols, web services, message brokers<br>
* Caching/Persistence<br>
* Databases, cache servers, file systems<br>
* HTTP cookies, HTML form parameters, API authentication tokens<br>

{%- include t10_subsection.html token="howToPrevent" pos="right" -%}
The only safe architectural pattern is not to accept serialized objects from untrusted sources or to use serialization mediums that only permit primitive data types. If that is not possible, consider one of more of the following:<br>
* Implementing integrity checks such as digital signatures on any serialized objects to prevent hostile object creation or data tampering.<br>
* Enforcing strict type constraints during deserialization before object creation as the code typically expects a definable set of classes. Bypasses to this technique have been demonstrated, so reliance solely on this is not advisable.<br>
* Isolating and running code that deserializes in low privilege environments when possible.<br>
* Log deserialization exceptions and failures, such as where the incoming type is not the expected type, or the deserialization throws exceptions.<br>
* Restricting or monitoring incoming and outgoing network connectivity from containers or servers that deserialize.<br>
* Monitoring deserialization, alerting if a user deserializes constantly.<br>

{%- include t10_subsection.html token="exampleAttackScenarios" pos="left" -%}
**Scenario #1**: A React application calls a set of Spring Boot microservices. Being functional programmers, they tried to ensure that their code is immutable. The solution they came up with is serializing user state and passing it back and forth with each request. An attacker notices the "R00" Java object signature, and uses the Java Serial Killer tool to gain remote code execution on the application server.<br>

**Scenario #2**: A PHP forum uses PHP object serialization to save a "super" cookie, containing the user's user ID, role, password hash, and other state:<br>

    {% include code_red_begin.html -%} a:4:{i:0;i:132;i:1;s:7:"Mallory";i:2;s:4:"user"; {%- include code_red_end.html %}
    {% include code_red_begin.html -%} i:3;s:32:"b6a8b3bea87fe0e05022f8f3c88bc960";} {%- include code_red_end.html %}

An attacker changes the serialized object to give themselves admin privileges:<br>

    {% include code_red_begin.html -%} a:4:{i:0;i:1;i:1;s:5:"Alice";i:2;s:5:"admin"; {%- include code_red_end.html %}
    {% include code_red_begin.html -%} i:3;s:32:"b6a8b3bea87fe0e05022f8f3c88bc960";} {%- include code_red_end.html %}

{%- include t10_subsection.html token="references" pos="right" -%}
**OWASP**<br>
* [OWASP Cheat Sheet: Deserialization](https://cheatsheetseries.owasp.org/cheatsheets/Deserialization_Cheat_Sheet.html)<br>
* [OWASP Proactive Controls: Validate All Inputs](/www-project-proactive-controls/v3/en/c5-validate-inputs)<br>
* [OWASP Application Security Verification Standard](/www-project-application-security-verification-standard)<br>
* [OWASP AppSecEU 2016: Surviving the Java Deserialization Apocalypse](https://speakerdeck.com/pwntester/surviving-the-java-deserialization-apocalypse)<br>
* [OWASP AppSecUSA 2017: Friday the 13th JSON Attacks](https://speakerdeck.com/pwntester/friday-the-13th-json-attacks)<br>
<br>
**External**<br>
* [CWE-502: eserialization of Untrusted Data](https://cwe.mitre.org/data/definitions/502.html)<br>
* [Java Unmarshaller Security](https://github.com/mbechler/marshalsec)<br>
* [OWASP AppSec Cali 2015: Marshalling Pickles](http://frohoff.github.io/appseccali-marshalling-pickles/)
{% include t10_subsection_end.html %}