---

document: OWASP Top Ten 2017 (de)
year: 2017
order: 22
en: Details_About_Risk_Factors
title: Details zu den Risiko-Faktoren
lang: de
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017 (de), Top Ten, de
redirect_from:
  - 2017/de/Details_About_Risk_Factors

---

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html pos="firstWhole" text="Zusammenfassung der Top 10 Risiko-Faktoren" -%}
Die folgende Tabelle stellt eine Zusammenfassung der Top 10 Risiken für die Anwendungssicherheit in der Version des Jahres 2017 und der dazugehörigen Risiko-Faktoren dar. Diese Faktoren wurden durch verfügbare Statistiken und die Erfahrung des OWASP-Teams bestimmt. Um diese Risiken für eine bestimmte Anwendung oder Organisation zu verstehen, <u>muss der Leser seine eigenen, spezifischen Bedrohungsquellen und Auswirkungen auf sein Unternehmen betrachten</u>. Selbst eklatante Software-Schwachstellen müssen nicht zwangsläufig ein ernsthaftes Risiko darstellen, wenn es z.B. keine Bedrohungsquellen gibt, die den notwendigen Angriff ausführen können oder die tatsächlichen Auswirkungen auf das Unternehmen und die Geschäftsprozesse zu vernachlässigen sind.

{% include risk_factor_summary_table.html %}

{%- include t10_subsection.html  pos="whole" text="Additional Risks To Consider / Weitere Risiken, die man prüfen sollte" -%}
Auch wenn die Top 10 bereits sehr viele Problemfelder abdecken, so gibt es dennoch weitere Risiken, die man in Betracht ziehen und im jeweiligen Unternehmen oder der Organisation evaluieren sollte. Einige waren schon in früheren Versionen der OWASP Top 10 enthalten, andere nicht - wie z.B. neue Angriffstechniken. Diese werden permanent gesucht, gefunden und weiter entwickelt. Andere wichtige Sicherheitsrisiken für Anwendungen, die man sich ebenfalls näher ansehen sollte, sind (sortiert nach CVE-ID):<br>
* [CWE-352: Cross-Site Request Forgery (CSRF)](https://cwe.mitre.org/data/definitions/352.html)<br>
* [CWE-400: Uncontrolled Resource Consumption ('Resource Exhaustion', 'AppDoS')](https://cwe.mitre.org/data/definitions/400.html)<br>
* [CWE-434: Unrestricted Upload of File with Dangerous Type](https://cwe.mitre.org/data/definitions/434.html)<br>
* [CWE-451: User Interface (UI) Misrepresentation of Critical Information (Clickjacking and others)](https://cwe.mitre.org/data/definitions/451.html)<br>
* [CWE-601: Unvalidated Forward and Redirects](https://cwe.mitre.org/data/definitions/601.html)<br>
* [CWE-799: Improper Control of Interaction Frequency (Anti-Automation)](https://cwe.mitre.org/data/definitions/799.html)<br>
* [CWE-829: Inclusion of Functionality from Untrusted Control Sphere (3rd Party Content)](https://cwe.mitre.org/data/definitions/829.html)<br>
* [CWE-918: Server-Side Request Forgery (SSRF)](https://cwe.mitre.org/data/definitions/918.html)
{%- include t10_subsection_end.html -%}
