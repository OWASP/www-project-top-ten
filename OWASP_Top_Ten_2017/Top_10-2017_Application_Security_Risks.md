---

document: OWASP Top Ten 2017
year: 2017
order: 4
title: Application Security Risks
lang: en
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017, Top Ten

---

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html text="What are Application Security Risks?" pos="firstWhole" -%}
Attackers can potentially use many different paths through your application to do harm to your business or organization. Each of these paths represents a risk that may, or may not, be serious enough to warrant attention.<br>
<br>
![Risks 2017 Image]({{site.baseurl}}/assets/images/Risks-2017.png){:width="80%"}
<br>
<br>
Sometimes these paths are trivial to find and exploit, and sometimes they are extremely difficult. Similarly, the harm that is caused may be of no consequence, or it may put you out of business. To determine the risk to your organization, you can evaluate the likelihood associated with each threat agent, attack vector, and security weakness and combine it with an estimate of the technical and business impact to your organization. Together, these factors determine your overall risk.

{%- include t10_subsection.html text="What is My Risk?" pos="left" width='70%' -%}
The [OWASP Top 10](https://owasp.org/www-project-top-ten) focuses on identifying the most serious web application security risks for a broad array of organizations. For each of these risks, we provide generic information about likelihood and technical impact using the following simple ratings scheme, which is based on the [OWASP Risk Rating Methodology](/www-community/OWASP_Risk_Rating_Methodology).<br>
<br>
{% include risk_factor_names_table.html %}
<br>
In this edition, we have updated the risk rating system to assist in calculating the likelihood and impact of any given risk. For more details, please see [Note About Risks](Top_10-2017_Note_About_Risks). 
<br>
Each organization is unique, and so are the threat actors for that organization, their goals, and the impact of any breach. If a public interest organization uses a content management system (CMS) for public information and a health system uses that same exact CMS for sensitive health records, the threat actors and business impacts can be very different for the same software. It is critical to understand the risk to your organization based on applicable threat agents and business impacts.
<br>
Where possible, the names of the risks in the Top 10 are aligned with [Common Weakness Enumeration (CWE)](https://cwe.mitre.org/) weaknesses to promote generally accepted naming conventions and to reduce confusion.

{%- include t10_subsection.html text="References" pos="right" -%}
**OWASP**<br>
* [OWASP Risk Rating Methodology](/www-community/OWASP_Risk_Rating_Methodology)<br>
* [Article on Threat/Risk Modeling (old wiki)](https://wiki.owasp.org/index.php/Application_Threat_Modeling)<br>
<br>
**External**<br>
* [ISO 31000: Risk Management Std](https://www.iso.org/iso-31000-risk-management.html)<br>
* [ISO 27001: ISMS](https://www.iso.org/isoiec-27001-information-security.html)<br>
* [NIST Cyber Framework (US)](https://www.nist.gov/cyberframework)<br>
* [ASD Strategic Mitigations (AU)](https://www.asd.gov.au/infosec/mitigationstrategies.htm)<br>
* [NIST CVSS 3.0](https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator)<br>
* [Microsoft Threat Modelling Tool](https://aka.ms/tmt)<br>
{% include t10_subsection_end.html %}