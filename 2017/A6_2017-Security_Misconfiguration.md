---

document: OWASP Top Ten 2017
year: 2017
order: 11
title: A6:2017-Security Misconfiguration
lang: en
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017, Top Ten, A6:2017
exploitability: 3
prevalence: 3
detectability: 3
technical: 2
redirect_from:
  - OWASP_Top_Ten_2017/Top_10-2017_A6-Security_Misconfiguration.html
  - OWASP_Top_Ten_2017/Top_10-2017_A6-Security_Misconfiguration

---

{% include risk_begin.html %}
{%- include risk_description.html pos="firstLeft" -%}
Attackers will often attempt to exploit unpatched flaws or access default accounts, unused pages, unprotected files and directories, etc to gain unauthorized access or knowledge of the system.
{%- include risk_description.html pos="mid" -%}
Security misconfiguration can happen at any level of an application stack, including the network services, platform, web server, application server, database, frameworks, custom code, and pre-installed virtual machines, containers, or storage. Automated scanners are useful for detecting misconfigurations, use of default accounts or configurations, unnecessary services, legacy options, etc.
{%- include risk_description.html pos="right" -%}
Such flaws frequently give attackers unauthorized access to some system data or functionality. Occasionally, such flaws result in a complete system compromise.<br>
The business impact depends on the protection needs of the application and data.
{%- include risk_end.html -%}

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html token="isTheApplicationVulnerable" pos="firstLeft" -%}
The application might be vulnerable if the application is:<br>
* Missing appropriate security hardening across any part of the application stack, or improperly configured permissions on cloud services.<br>
* Unnecessary features are enabled or installed (e.g. unnecessary ports, services, pages, accounts, or privileges).<br>
* Default accounts and their passwords still enabled and unchanged.<br>
* Error handling reveals stack traces or other overly informative error messages to users.<br>
* For upgraded systems, latest security features are disabled or not configured securely.<br>
* The security settings in the application servers, application frameworks (e.g. Struts, Spring, ASP.NET), libraries, databases, etc. not set to secure values.<br>
* The server does not send security headers or directives or they are not set to secure values.<br>
* The software is out of date or vulnerable (see [A9:2017-Using Components with Known Vulnerabilities](A9_2017-Using_Components_with_Known_Vulnerabilities)).<br>
Without a concerted, repeatable application security configuration process, systems are at a higher risk.

{%- include t10_subsection.html token="howToPrevent" pos="right" -%}
Secure installation processes should be implemented, including:<br>
* A repeatable hardening process that makes it fast and easy to deploy another environment that is properly locked down. Development, QA, and production environments should all be configured identically, with different credentials used in each environment. This process should be automated to minimize the effort required to setup a new secure environment.<br>
* A minimal platform without any unnecessary features, components, documentation, and samples. Remove or do not install unused features and frameworks.<br>
* A task to review and update the configurations appropriate to all security notes, updates and patches as part of the patch management process (see [A9:2017-Using Components with Known Vulnerabilities](A9_2017-Using_Components_with_Known_Vulnerabilities)). In particular, review cloud storage permissions (e.g. S3 bucket permissions).<br>
* A segmented application architecture that provides effective, secure separation between components or tenants, with segmentation, containerization, or cloud security groups (ACLs).<br>
* Sending security directives to clients, e.g. [Security Headers](/www-project-secure-headers).<br>
* An automated process to verify the effectiveness of the configurations and settings in all environments.

{%- include t10_subsection.html token="exampleAttackScenarios" pos="left" -%}
**Scenario #1**: The application server comes with sample applications that are not removed from the production server. These sample applications have known security flaws attackers use to compromise the server. If one of these applications is the admin console, and default accounts weren't changed the attacker logs in with default passwords and takes over.<br>
**Scenario #2**: Directory listing is not disabled on the server. An attacker discovers they can simply list directories. The attacker finds and downloads the compiled Java classes, which they decompile and reverse engineer to view the code. The attacker then finds a serious access control flaw in the application.<br>
**Scenario #3**: The application server's configuration allows detailed error messages, e.g. stack traces, to be returned to users. This potentially exposes sensitive information or underlying flaws such as component versions that are known to be vulnerable.<br>
**Scenario #4**: A cloud service provider has default sharing permissions open to the Internet by other CSP users. This allows sensitive data stored within cloud storage to be accessed.

{%- include t10_subsection.html token="references" pos="right" -%}
**OWASP**<br>
* [OWASP Testing Guide: Configuration Management](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/02-Configuration_and_Deployment_Management_Testing/README)<br>
* [OWASP Testing Guide: Testing for Error Codes](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/08-Testing_for_Error_Handling/01-Testing_for_Error_Code)<br>
For additional requirements in this area, see the [Application Security Verification Standard V19 Configuration](/www-project-application-security-verification-standard).<br>
<br>
**External**<br>
* [NIST Guide to General Server Hardening](https://csrc.nist.gov/publications/detail/sp/800-123/final)<br>
* [CWE-2: Environmental Security Flaws](https://cwe.mitre.org/data/definitions/2.html)<br>
* [CWE-16: Configuration](https://cwe.mitre.org/data/definitions/16.html)<br>
* [CWE-388: Error Handling](https://cwe.mitre.org/data/definitions/388.html)<br>
* [CIS Security Configuration Guides/Benchmarks](https://www.cisecurity.org/cis-benchmarks/)<br>
* [Amazon S3 Bucket Discovery and Enumeration](https://blog.websecurify.com/2017/10/aws-s3-bucket-discovery.html)<br>
{% include t10_subsection_end.html %}