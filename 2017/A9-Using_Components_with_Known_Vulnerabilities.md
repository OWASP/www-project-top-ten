---

document: OWASP Top Ten 2017
year: 2017
order: 14
title: A9:2017-Using Components with Known Vulnerabilities
lang: en
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017, Top Ten, A9:2017
exploitability: 2
prevalence: 3
detectability: 2
technical: 2

---

{% include risk_begin.html %}
{%- include risk_description.html pos="firstLeft" -%}
While it is easy to find already-written exploits for many known vulnerabilities, other vulnerabilities require concentrated effort to develop a custom exploit.
{%- include risk_description.html pos="mid" -%}
Prevalence of this issue is very widespread. Component-heavy development patterns can lead to development teams not even understanding which components they use in their application or API, much less keeping them up to date.<br>
Some scanners such as retire.js help in detection, but determining exploitability requires additional effort.
{%- include risk_description.html pos="right" -%}
While some known vulnerabilities lead to only minor impacts, some of the largest breaches to date have relied on exploiting known vulnerabilities in components. Depending on the assets you are protecting, perhaps this risk should be at the top of the list.
{%- include risk_end.html -%}

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html token="isTheApplicationVulnerable" pos="firstLeft" -%}
You are likely vulnerable:<br>
* If you do not know the versions of all components you use (both client-side and server-side). This includes components you directly use as well as nested dependencies.<br>
* If software is vulnerable, unsupported, or out of date. This includes the OS, web/application server, database management system (DBMS), applications, APIs and all components, runtime environments, and libraries.<br>
* If you do not scan for vulnerabilities regularly and subscribe to security bulletins related to the components you use.<br>
* If you do not fix or upgrade the underlying platform, frameworks, and dependencies in a risk-based, timely fashion. This commonly happens in environments when patching is a monthly or quarterly task under change control, which leaves organizations open to many days or months of unnecessary exposure to fixed vulnerabilities.<br>
* If software developers do not test the compatibility of updated, upgraded, or patched libraries.<br>
* If you do not secure the components' configurations (see  [A6:2017-Security Misconfiguration](Top_10-2017_A6-Security_Misconfiguration)).

{%- include t10_subsection.html token="howToPrevent" pos="right" -%}
There should be a patch management process in place to:<br>
* Remove unused dependencies, unnecessary features, components, files, and documentation.<br>
* Continuously inventory the versions of both client-side and server-side components (e.g. frameworks, libraries) and their dependencies using tools like [versions](http://www.mojohaus.org/versions-maven-plugin/), [DependencyCheck](/www-project-dependency-check), [retire.js](https://github.com/retirejs/retire.js/), etc. Continuously monitor sources like [CVE](https://cve.mitre.org/) and [NVD](https://nvd.nist.gov/) for vulnerabilities in the components. Use software composition analysis tools to automate the process. Subscribe to email alerts for security vulnerabilities related to components you use.<br>
* Only obtain components from official sources over secure links. Prefer signed packages to reduce the chance of including a modified, malicious component.<br>
* Monitor for libraries and components that are unmaintained or do not create security patches for older versions. If patching is not possible, consider deploying a [virtual patch](/www-community/Virtual_Patching_Best_Practices) to monitor, detect, or protect against the discovered issue.<br>

Every organization must ensure that there is an ongoing plan for monitoring, triaging, and applying updates or configuration changes for the lifetime of the application or portfolio.

{%- include t10_subsection.html token="exampleAttackScenarios" pos="left" -%}
**Scenario #1**: Components typically run with the same privileges as the application itself, so flaws in any component can result in serious impact. Such flaws can be accidental (e.g. coding error) or intentional (e.g. backdoor in component). Some example exploitable component vulnerabilities discovered are:<br>
* [CVE-2017-5638](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-5638), a Struts 2 remote code execution vulnerability that enables execution of arbitrary code on the server, has been blamed for significant breaches.<br>
* While [internet of things (IoT)](https://en.wikipedia.org/wiki/Internet_of_things) are frequently difficult or impossible to patch, the importance of patching them can be great (e.g. biomedical devices).<br>

There are automated tools to help attackers find unpatched or misconfigured systems. For example, the [Shodan IoT search engine](https://www.shodan.io/report/89bnfUyJ) can help you find devices that still suffer from [Heartbleed](https://en.wikipedia.org/wiki/Heartbleed) vulnerability that was patched in April 2014.

{%- include t10_subsection.html token="references" pos="right" -%}
**OWASP**<br>
* [OWASP Application Security Verification Standard: V1 Architecture, design and threat modelling](/www-project-application-security-verification-standard)<br>
* [OWASP Dependency Check (for Java and .NET libraries)](/www-project-dependency-check)<br>
* [OWASP Testing Guide - Map Application Architecture (OTG-INFO-010)](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/01-Information_Gathering/10-Map_Application_Architecture)<br>
* [OWASP Virtual Patching Best Practices](/www-community/Virtual_Patching_Best_Practices)<br>
<br>
**External**<br>
* [The Unfortunate Reality of Insecure Libraries](https://cdn2.hubspot.net/hub/203759/file-1100864196-pdf/docs/Contrast_-_Insecure_Libraries_2014.pdf)<br>
* [MITRE Common Vulnerabilities and Exposures (CVE) search](https://www.cvedetails.com/version-search.php)<br>
* [National Vulnerability Database (NVD)](https://nvd.nist.gov/)<br>
* [Retire.js for detecting known vulnerable JavaScript libraries](https://github.com/retirejs/retire.js/)<br>
* [Node Libraries Security Advisories](https://nodesecurity.io/advisories)<br>
* [Ruby Libraries Security Advisory Database and Tools](https://rubysec.com/)
{% include t10_subsection_end.html %}