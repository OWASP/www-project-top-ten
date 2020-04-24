---

document: OWASP Top Ten 2017
year: 2017
order: 17
title: What's Next for Security Testers
lang: en
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017, Top Ten

---

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html text="Establish Continuous Application Security Testing" pos="firstWhole" -%}
Building code securely is important. But it’s critical to verify that the security you intended to build is actually present, correctly implemented, and used everywhere it is supposed to be. The goal of application security testing is to provide this evidence. The work is difficult and complex, and modern high-speed development processes like Agile and DevOps have put extreme pressure on traditional approaches and tools. So we strongly encourage you to put some thought into how you are going to focus on what’s important across your entire application portfolio, and do it cost-effectively.<br>
Modern risks move quickly, so the days of scanning or penetration testing an application for vulnerabilities once every year or so are long gone. Modern software development requires continuous application security testing across the entire software development lifecycle. Look to enhance existing development pipelines with security automation that doesn’t slow development. Whatever approach you choose, consider the annual cost to test, triage, remediate, retest, and redeploy a single application, multiplied by the size of your application portfolio.<br>
<br>
{% include t10_subsection_inner_round_box.html
   topic='**Understand the Threat Model:**'
   description="Before you start testing, be sure you understand what’s important to spend time on. Priorities come from the threat model, so if you don’t have one, you need to create one before testing. Consider using [OWASP ASVS](/www-project-application-security-verification-standard) and the [OWASP Web Security Testing Guide](https://owasp.org/www-project-web-security-testing-guide/) as an input and don’t rely on tool vendors to decide what’s important for your business."
%}
{% include t10_subsection_inner_round_box.html
   topic='**Understand Your SDLC:**'
   description="Your approach to application security testing must be highly compatible with the people, processes, and tools you use in your software development lifecycle (SDLC). Attempts to force extra steps, gates, and reviews are likely to cause friction, get bypassed, and struggle to scale. Look for natural opportunities to gather security information and feed it back into your process."
%}
{% include t10_subsection_inner_round_box.html
   topic='**Testing Strategies:**'
   description="Choose the simplest, fastest, most accurate technique to verify each requirement. The [OWASP Security Knowledge Framework](/www-project-security-knowledge-framework) and [OWASP Application Security Verification Standard](/www-project-application-security-verification-standard) can be great sources of functional and nonfunctional security requirements in your unit and integration testing. Be sure to consider the human resources required to deal with false positives from the use of automated tooling as well as the serious dangers of false negatives."
%}
{% include t10_subsection_inner_round_box.html
   topic='**Achieving Coverage and Accuracy:**'
   description="You don’t have to start out testing everything. Focus on what’s important and expand your verification program over time. That means expanding the set of security defenses and risks that are being automatically verified as well as expanding the set of applications and APIs being covered. The goal is to achieve a state where the essential security of all your applications and APIs is verified continuously."
%}
{% include t10_subsection_inner_round_box.html
   topic='**Clearly Communicate Findings:**'
   description="No matter how good you are at testing, it won’t make any difference unless you communicate it effectively. Build trust by showing you understand how the application works. Describe clearly how it can be abused without “lingo” and include an attack scenario to make it real. Make a realistic estimation of how hard the vulnerability is to discover and exploit, and how bad that would be. Finally, deliver findings in the tools development teams are already using, not PDF files."
%}
{%- include t10_subsection_end.html -%}