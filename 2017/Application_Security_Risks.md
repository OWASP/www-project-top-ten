---

layout: col-document
title: Application Security Risks
author:
contributors:
tags: OWASP Top Ten 2017, Top Ten
document: OWASP Top Ten 2017
order: 4

---

## What are Application Security Risks?

Attackers can potentially use many different paths through your application to do harm to your business or organization. Each of these paths represents a risk that may, or may not, be serious enough to warrant attention.

![Risks 2017 Image](/www-project-top-ten/assets/images/Risks-2017.png)

Sometimes these paths are trivial to find and exploit, and sometimes they are extremely difficult. Similarly, the harm that is caused may be of no consequence, or it may put you out of business. To determine the risk to your organization, you can evaluate the likelihood associated with each threat agent, attack vector, and security weakness and combine it with an estimate of the technical and business impact to your organization. Together, these factors determine your overall risk.

### What is My Risk?

The [OWASP Top 10](https://www2.owasp.org/www-project-top-ten) focuses on identifying the most serious web application security risks for a broad array of organizations. For each of these risks, we provide generic information about likelihood and technical impact using the following simple ratings scheme, which is based on the [OWASP Risk Rating Methodology]().  


#### Thread Agents
* App Specific

#### Exploitability
* <i class="fa fa-exclamation-triangle" style="color:red;padding-right:5px;"></i> Easy: 3 
* <i class="fa fa-exclamation-circle" style="color:orange;padding-right:5px;"></i>Average: 2
* <i class="fa fa-info-circle" style="color:yellow;background-color:black;border-radius:16px;"></i><span style="padding-left: 5px;">Difficult: 1</span>

#### Weakness Prevalence
* <i class="fa fa-exclamation-triangle" style="color:red;padding-right:5px;"></i> Widespread: 3 
* <i class="fa fa-exclamation-circle" style="color:orange;padding-right:5px;"></i>Common: 2
* <i class="fa fa-info-circle" style="color:yellow;background-color:black;border-radius:16px;"></i><span style="padding-left: 5px;">Uncommon: 1</span>

#### Weakness Detectability
* <i class="fa fa-exclamation-triangle" style="color:red;padding-right:5px;"></i> Easy: 3 
* <i class="fa fa-exclamation-circle" style="color:orange;padding-right:5px;"></i>Average: 2
* <i class="fa fa-info-circle" style="color:yellow;background-color:black;border-radius:16px;"></i><span style="padding-left: 5px;">Difficult: 1</span>

#### Technical Impacts
* <i class="fa fa-exclamation-triangle" style="color:red;padding-right:5px;"></i> Severe: 3 
* <i class="fa fa-exclamation-circle" style="color:orange;padding-right:5px;"></i>Moderate: 2
* <i class="fa fa-info-circle" style="color:yellow;background-color:black;border-radius:16px;"></i><span style="padding-left: 5px;">Minor: 1</span>

#### Business Impacts
* App/Business Specific


In this edition, we have updated the risk rating system to assist in calculating the likelihood and impact of any given risk. For more details, please see [Note About Risks](Top_10-2017_Note_About_Risks). 

Each organization is unique, and so are the threat actors for that organization, their goals, and the impact of any breach. If a public interest organization uses a content management system (CMS) for public information and a health system uses that same exact CMS for sensitive health records, the threat actors and business impacts can be very different for the same software. It is critical to understand the risk to your organization based on applicable threat agents and business impacts.



Where possible, the names of the risks in the Top 10 are aligned with [Common Weakness Enumeration (CWE)](https://cwe.mitre.org/) weaknesses to promote generally accepted naming conventions and to reduce confusion.


#### References

**OWASP**

* [OWASP Risk Rating Methodology]()
* [Article on Threat/Risk Modeling]()

**External**

* [ISO 31000: Risk Management Std](https://www.iso.org/iso-31000-risk-management.html)
* [ISO 27001: ISMS](https://www.iso.org/isoiec-27001-information-security.html)
* [NIST Cyber Framework (US)](https://www.nist.gov/cyberframework)
* [ASD Strategic Mitigations (AU)](https://www.asd.gov.au/infosec/mitigationstrategies.htm)
* [NIST CVSS 3.0](https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator)
* [Microsoft Threat Modelling Tool](https://www.microsoft.com/en-us/download/details.aspx?id=49168)