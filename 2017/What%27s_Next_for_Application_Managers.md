---

document: OWASP Top Ten 2017
year: 2017
order: 19
title: What's Next for Application Managers
lang: en
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017, Top Ten

---
{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html text="Manage the Full Application Lifecycle" pos="firstWhole" -%}
Applications belong to the most complex systems humans regularly create and maintain. IT management for an application should be performed by IT specialists who are responsible for the overall IT lifecycle of an application. We suggest establishing the role of application manager as technical counterpart to the application owner. The application manager is in charge of the whole application lifecycle from the IT perspective, from collecting the requirements until the process of retiring systems, which is often overlooked.<br>
<br>
{% include t10_subsection_inner_round_box.html
   topic='**Requirements and Resource Management:**'
   description="
       * Collect and negotiate the business requirements for an application with the business, including the protection requirements with regard to confidentiality, authenticity, integrity and availability of all data assets, and the expected business logic.<br>
       * Compile the technical requirements including functional and nonfunctional security requirements.<br>
       * Plan and negotiate the budget that covers all aspects of design, build, testing and operation, including security activities."
%}
{% include t10_subsection_inner_round_box.html
   topic='**Request for Proposals (RFP) and Contracting:**'
   description="
       * Negotiate the requirements with internal or external developers, including guidelines and security requirements with respect to your security program, e.g. SDLC, best practices.<br>
       * Rate the fulfillment of all technical requirements, including a planning and design phase.<br>
       * Negotiate all technical requirements, including design, security, and service level agreements (SLA).<br>
       * Adopt templates and checklists, such as [OWASP Secure Software Contract Annex](/www-community/OWASP_Secure_Software_Contract_Annex).<br>**Note**: The annex is for US contract law, so please consult qualified legal advice before using the sample annex."
%}
{% include t10_subsection_inner_round_box.html
   topic='**Planning and Design:**'
   description="
       * Negotiate planning and design with the developers and internal shareholders, e.g. security specialists.<br>
       * Define the security architecture, controls, and countermeasures appropriate to the protection needs and the expected threat level. This should be supported by security specialists.<br>
       * Ensure that the application owner accepts remaining risks or provides additional resources.<br>
       * In each sprint, ensure security stories are created that include constraints added for non-functional requirements."
%}
{% include t10_subsection_inner_round_box.html
   topic='**Deployment, Testing, and Rollout:**'
   description='
       * Automate the secure deployment of the application, interfaces and all required components, including needed authorizations.<br>
       * Test the technical functions and integration with the IT architecture and coordinate business tests.<br>
       * Create "use" and "abuse" test cases from technical and business perspectives.<br>
       * Manage security tests according to internal processes, the protection needs, and the assumed threat level by the application.<br>
       * Put the application in operation and migrate from previously used applications if needed.<br>
       * Finalize all documentation, including the change management data base (CMDB) and security architecture.'
%}
{% include t10_subsection_inner_round_box.html
   topic='**Operations and Change Management:**'
   description="
       * Operations must include guidelines for the security management of the application (e.g. patch management).<br>
       * Raise the security awareness of users and manage conflicts about usability vs. security.<br>
       * Plan and manage changes, e.g. migrate to new versions of the application or other components like OS, middleware, and libraries.<br>
       * Update all documentation, including in the CMDB and the security architecture, controls, and countermeasures, including any runbooks or project documentation."
%}
{% include t10_subsection_inner_round_box.html
   topic='**Retiring Systems:**' 
   description="
       * Any required data should be archived. All other data should be securely wiped.<br>
       * Securely retire the application, including deleting unused accounts and roles and permissions.<br>
       * Set your application's state to retired in the CMDB."
%}
{%- include t10_subsection_end.html -%}