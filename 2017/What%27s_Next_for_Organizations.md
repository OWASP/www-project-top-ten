---
document: OWASP Top Ten 2017
year: 2017
order: 18
title: What's Next for Organizations
lang: en
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017, Top Ten
redirect_from:
  - OWASP_Top_Ten_2017/Top_10-2017_What%2527s_Next_for_Organizations.html
  - OWASP_Top_Ten_2017/Top_10-2017_What%2527s_Next_for_Organizations
  - OWASP_Top_Ten_2017/Top_10-2017_What%252527s_Next_for_Organizations.html
  - OWASP_Top_Ten_2017/Top_10-2017_What%252527s_Next_for_Organizations

---

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html text="Start Your Application Security Program Now" pos="firstWhole" -%}
Application security is no longer optional. Between increasing attacks and regulatory pressures, organizations must establish effective processes and capabilities for securing their applications and APIs. Given the staggering amount of code in the numerous applications and APIs already in production, many organizations are struggling to get a handle on the enormous volume of vulnerabilities.<br>
OWASP recommends organizations establish an application security program to gain insight and improve security across their applications and APIs. Achieving application security requires many different parts of an organization to work together efficiently, including security and audit, software development, business, and executive management. Security should be visible and measurable, so that all the different players can see and understand the organization’s application security posture. Focus on the activities and outcomes that actually help improve enterprise security by eliminating or reducing risk. [OWASP SAMM](/www-project-samm) and the [OWASP Application Security Guide for CISOs: V1 (old wiki)](https://wiki.owasp.org/index.php/Application_Security_Guide_For_CISOs) is the source of most of the key activities in this list.<br>
<br>
{% include t10_subsection_inner_round_box.html 
   topic='**Get Started:**' 
   description="
       * Document all applications and associated data assets. Larger organizations should consider implementing a Configuration Management Database (CMDB) for this purpose.<br>
       * Establish an [application security program](/www-project-samm) and drive adoption.<br>
       * Conduct a [capability gap analysis](/www-project-samm) comparing your organization to your peers to define key improvement areas and an execution plan.<br>
       * Gain management approval and establish an [application security awareness campaign](/www-project-samm) for the entire IT organization."
%}
{% include t10_subsection_inner_round_box.html 
   topic='**Risk Based Portfolio Approach:**' 
   description="
       * Identify the [protection needs](/www-project-samm) of your [application portfolio](/www-project-samm) from a business perspective. This should be driven in part by privacy laws and other regulations relevant to the data asset being protected.<br>
       * Establish a [common risk rating model](/www-community/OWASP_Risk_Rating_Methodology) with a consistent set of likelihood and impact factors reflective of your organization's tolerance for risk.<br>
       * Accordingly measure and prioritize all your applications and APIs. Add the results to your CMDB.<br>
       * Establish assurance guidelines to properly define coverage and level of rigor required."
%}
{% include t10_subsection_inner_round_box.html 
   topic='**Enable with a Strong Foundation:**' 
   description="
       * Establish a set of focused [policies and standards](/www-project-samm) that provide an application security baseline for all development teams to adhere to.<br>
       * Define a [common set of reusable security controls](/www-project-security-knowledge-framework) that complement these policies and standards and provide design and development guidance on their use.<br>
       * Establish an [application security training curriculum](/www-project-samm) that is required and targeted to different development roles and topics."
%}
{% include t10_subsection_inner_round_box.html 
   topic='**Integrate Security into Existing Processes:**' 
   description="
       * Define and integrate [secure implementation and verification](/www-project-samm) activities into existing development and operational processes.<br>
       * Activities include [threat modeling, secure design and design review, secure coding and code review, penetration testing](/www-project-samm), and remediation.<br>
       * Provide subject matter experts and [support services for development and project teams](/www-project-samm) to be successful."
%}
{% include t10_subsection_inner_round_box.html 
   topic='**Provide Management Visibility:**' 
   description="
       * Manage with metrics. Drive improvement and funding decisions based on the metrics and analysis data captured. Metrics include adherence to security practices and activities, vulnerabilities introduced, vulnerabilities mitigated, application coverage, defect ensity by type and instance counts, etc.<br>
       * Analyze data from the implementation and verification activities to look for root cause and vulnerability patterns to drive strategic and systemic improvements across the enterprise. Learn from mistakes and offer positive incentives to promote improvements."
%}
{%- include t10_subsection_end.html -%}