---

document: OWASP Top Ten 2017
year: 2017
order: 16
title: What's Next for Developers
lang: en
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017, Top Ten

---
{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html text="Establish & Use Repeatable Security Processes and Standard Security Controls" pos="firstWhole" -%}
Whether you are new to web application security or already very familiar with these risks, the task of producing a secure web application or fixing an existing one can be difficult. If you have to manage a large application portfolio, this task can be daunting.<br>
To help organizations and developers reduce their application security risks in a cost-effective manner, OWASP has produced numerous free and open resources that you can use to address application security in your organization. The following are some of the many resources OWASP has produced to help organizations produce secure web applications and APIs. On the next page, we present additional OWASP resources that can assist organizations in verifying the security of their applications and APIs.<br>
<br>
{% include t10_subsection_inner_round_box.html
   topic='**Application Security Requirements:**'
   description="To produce a secure web application, you must define what secure means for that application. OWASP recommends you use the [OWASP Application Security Verification Standard (ASVS)](/www-project-application-security-verification-standard) as a guide for setting the security requirements for your application(s). If you’re outsourcing, consider the [OWASP Secure Software Contract Annex](/www-community/OWASP_Secure_Software_Contract_Annex).
    **Note**: The annex is for US contract law, so please consult qualified legal advice before using the sample annex."
%}
{% include t10_subsection_inner_round_box.html
   topic='**Application Security Architecture:**'
   description="Rather than retrofitting security into your applications and APIs, it is far more cost effective to design the security in from the start. OWASP recommends the [OWASP Prevention Cheat Sheets](/www-project-cheat-sheets) as a good starting point for guidance on how to design security in from the beginning."
%}
{% include t10_subsection_inner_round_box.html
   topic='**Security Standard Controls:**'
   description="Building strong and usable security controls is difficult. Using a set of standard security controls radically simplifies the development of secure applications and APIs. The [OWASP Prevention Cheat Sheets](/www-project-cheat-sheets) is a good starting point for developers, and many modern frameworks now come with standard and effective security controls for authorization, validation, CSRF prevention, etc."
%}
{% include t10_subsection_inner_round_box.html
   topic='**Secure Development Lifecycle:**'
   description="To improve the process your organization follows when building applications and APIs, OWASP recommends the [OWASP Software Assurance Maturity Model (SAMM)](/www-project-samm). This model helps organizations formulate and implement a strategy for software security that is tailored to the specific risks facing their organization."
%}
{% include t10_subsection_inner_round_box.html
   topic='**Application Security Education:**'
   description="The OWASP Education Project provides training materials to help educate developers on web application security. For hands-on learning about vulnerabilities, try [OWASP WebGoat](/www-project-webgoat), [OWASP Juice Shop Project](/www-project-juice-shop) or the [OWASP Broken Web Applications Project](/www-project-broken-web-applications) [(old wiki)](https://wiki.owasp.org/index.php/OWASP_Broken_Web_Applications_Project). To stay current, come to an [OWASP AppSec Conference](/events), [OWASP Conference Training](/events), or local [OWASP Chapter meetings](/chapters)."
%}
There are numerous additional OWASP resources available for your use. Please visit the [OWASP Projects page](/projects), which lists all the Flagship, Labs, and Incubator projects in the OWASP project inventory. Most OWASP resources are available on our [website](https://owasp.org), and many OWASP documents can be ordered in [hardcopy or as eBooks](https://stores.lulu.com/owasp).
{%- include t10_subsection_end.html -%}