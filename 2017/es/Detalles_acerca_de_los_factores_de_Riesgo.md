---

document: OWASP Top Ten 2017 (es)
year: 2017
order: 22
en: Details About Risk Factors
title: Detalles acerca de los factores de Riesgo
lang: es
layout: full-width-document
author:
contributors: vtamara
tags: OWASP Top Ten 2017 (es), Top Ten, es
redirect_from:
  - 2017/es/Details_About_Risk_Factors.html

---
{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html text="Resumen de factores de Riesgo del Top 10" pos="firstWhole" -%}

La siguiente tabla presenta un resumen del Top 10 y los factores de riesgo 
que hemos asignado a cada uno de ellos. <br>

Estos factores fueron determinados basándose en las estadísticas disponibles 
y la experiencia del equipo del OWASP Top 10. 
Para entender estos riesgos en 
una aplicación en particular u organización, <u>usted debe considerar sus 
propios agentes de amenaza e impactos de negocio específicos</u>. Incluso las 
vulnerabilidades graves de software podrían no representar un riesgo serio 
si no hay agentes de amenaza en posición para ejecutar el ataque necesario, 
o el impacto al negocio es insignificante para los activos involucrados.

{% include risk_factor_summary_table.html %}

{%- include t10_subsection.html text="Project Sponsorship" pos="whole" -%}
The Top 10 covers a lot of ground, but there are many other risks you should consider and evaluate in your organization. Some of these have appeared in previous versions of the Top 10, and others have not, including new attack techniques that are being identified all the time. Other important application security risks (ordered by CWE-ID) that you should additionally consider include:<br>
* [CWE-352: Cross-Site Request Forgery (CSRF)](https://cwe.mitre.org/data/definitions/352.html)<br>
* [CWE-400: Uncontrolled Resource Consumption ('Resource Exhaustion', 'AppDoS')](https://cwe.mitre.org/data/definitions/400.html)<br>
* [CWE-434: Unrestricted Upload of File with Dangerous Type](https://cwe.mitre.org/data/definitions/434.html)<br>
* [CWE-451: User Interface (UI) Misrepresentation of Critical Information (Clickjacking and others)](https://cwe.mitre.org/data/definitions/451.html)<br>
* [CWE-601: Unvalidated Forward and Redirects](https://cwe.mitre.org/data/definitions/601.html)<br>
* [CWE-799: Improper Control of Interaction Frequency (Anti-Automation)](https://cwe.mitre.org/data/definitions/799.html)<br>
* [CWE-829: Inclusion of Functionality from Untrusted Control Sphere (3rd Party Content)](https://cwe.mitre.org/data/definitions/829.html)<br>
* [CWE-918: Server-Side Request Forgery (SSRF)](https://cwe.mitre.org/data/definitions/918.html)
{% include t10_subsection_end.html %}

