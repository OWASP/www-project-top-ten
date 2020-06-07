---

document: OWASP Top Ten 2017
year: 2017
order: 2
layout: full-width-document
lang: en
title: Introduction
author:
contributors:
tags: OWASP Top Ten 2017, Top Ten

---

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html text="Welcome to the OWASP Top 10 - 2017!" pos="firstWhole" -%}
This major update adds several new issues, including two issues selected by the community - [A8:2017-Insecure Deserialization](Top_10-2017_A8-Insecure_Deserialization) and [A10:2017-Insufficient Logging &amp; Monitoring](Top_10-2017_A10-Insufficient_Logging%252526Monitoring.html). Two key differentiators from previous OWASP Top 10 releases are the substantial community feedback and extensive data assembled from dozens of organizations, possibly the largest amount of data ever assembled in the preparation of an application security standard. This provides us with confidence that the new OWASP Top 10 addresses the most impactful application security risks currently facing organizations.<br>
The OWASP Top 10-2017 is based primarily on 40+ data submissions from firms that specialize in application security and an industry survey that was completed by over 500 individuals. This data spans vulnerabilities gathered from hundreds of organizations and over 100,000 real-world applications and APIs. The Top 10 items are selected and prioritized according to this prevalence data, in combination with consensus estimates of exploitability, detectability, and impact.<br>
A primary aim of the OWASP Top 10 is to educate developers, designers, architects, managers, and organizations about the consequences of the most common and most important web application security weaknesses. The Top 10 provides basic techniques to protect against these high risk problem areas, and provides guidance on where to go from here.

{%- include t10_subsection.html text="Roadmap for future activities" pos="left" -%}
**Don't stop at 10**. There are hundreds of issues that could affect the overall security of a web application as discussed in the [OWASP Developer's Guide](https://wiki.owasp.org/index.php/OWASP_Guide_Project) and the [OWASP Cheat Sheet Series](/www-project-cheat-sheets). These are essential reading for anyone developing web applications and APIs. Guidance on how to effectively find vulnerabilities in web applications and APIs is provided in the OWASP Testing Guide.<br>
**Constant change**. The OWASP Top 10 will continue to change. Even without changing a single line of your application's code, you may become vulnerable as new flaws are discovered and attack methods are refined. Please review the advice at the end of the Top 10 in What's Next For [Developers](Top_10-2017_What%2527s_Next_for_Developers), [Security Testers](Top_10-2017_What%2527s_Next_for_Security_Testers), [Organizations](Top_10-2017_What%2527s_Next_for_Organizations) and [Application Managers](Top_10-2017_What%2527s_Next_for_Application_Managers) for more information.<br>
**Think positive**. When you're ready to stop chasing vulnerabilities and focus on establishing strong application security controls, the [OWASP Proactive Controls](/www-project-proactive-controls) project provides a starting point to help developers build security into their applications and the [OWASP Application Security Verification Standard (ASVS)](/www-project-application-security-verification-standard) is a guide for organizations and application reviewers on what to verify.<br>
**Use tools wisely**. Security vulnerabilities can be quite complex and deeply buried in code. In many cases, the most cost-effective approach for finding and eliminating these weaknesses is human experts armed with advanced tools. Relying on tools alone provides a false sense of security and is not recommended.<br>
**Push left, right, and everywhere**. Focus on making security an integral part of your culture throughout your development organization. Find out more in the [OWASP Software Assurance Maturity Model (SAMM)](/www-project-samm).<br>

{%- include t10_subsection.html text="Attribution" pos="right" -%}
We'd like to thank the organizations that contributed their vulnerability data to support the 2017 update. We received more than 40 responses to the call for data. For the first time, all the data contributed to a Top 10 release, and the full list of contributors, is publicly available. We believe this is one of the larger, more diverse collections of vulnerability data ever collected publicly.<br>
As there are more contributors than space here, we have created a [dedicated page](Top_10-2017_Acknowledgements) to recognize the contributions made. We wish to give heartfelt thanks to these organizations for being willing to be on the front lines by publicly sharing vulnerability data from their efforts. We hope this will continue to grow and encourage more organizations to do the same and possibly be seen as one of the key milestones of evidence based security. The OWASP Top 10 would not be possible without these amazing contributions.<br>
A big thank you to the more than 500 individuals who took the time to complete the industry ranked survey. Your voice helped determine two new additions to the Top 10. The additional comments, notes of encouragement, and criticisms were all appreciated. We know your time is valuable and we wanted to say thanks.<br>
We would like to thank those individuals who contributed significant constructive comments and time reviewing this update to the Top 10. As much as possible, we have listed them on the [Acknowledgements](Top_10-2017_Acknowledgements) page.<br>
And finally, we'd like to thank in advance all the translators out there who will translate this release of the Top 10 into numerous different languages, helping to make the OWASP Top 10 more accessible to the entire planet.
{% include t10_subsection_end.html %}
