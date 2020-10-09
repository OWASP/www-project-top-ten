---

document: OWASP Top Ten 2017 (de)
year: 2017
order: 5
en: Application_Security_Risks
title: Sicherheitsrisiken für Anwendungen
lang: de
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017 (de), Top Ten, de
redirect_from:
  - 2017/de/Application_Security_Risks

---

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html pos="firstWhole" text="Was sind Sicherheitsrisiken für Anwendungen?" -%}
Angreifer können im Fall der Fälle viele unterschiedliche Angriffswege in einer Applikation ausnutzen, um Schaden für das Unternehmen oder die Organisation zu verursachen. Jeder einzelne dieser Wege stellt ein Risiko dar, das unter Umständen besondere Aufmerksamkeit bedarf.
<br>
![2017-Risks Image (de)]({{site.baseurl}}/assets/images/2017-Risks_de.png){:width="80%"}
<br>
Manche dieser Angriffswege sind sehr leicht zu finden und auszunutzen, bei anderen kann es bedeutend schwer werden.<br>So unterschiedlich die Wege, so unterschiedliche sind auch die Auswirkungen: Einige sind kaum erwähnenswert, andere könnten letztlich zum Untergang des Unternehmens führen. Das individuelle Risiko kann stets nur unter Beachtung aller relevanter Faktoren abgeschätzt werden: Dabei handelt es sich um die jeweiligen Wahrscheinlichkeiten, die mit Bedrohungs-quellen, Angriffsvektoren und Schwachstellen verbunden sind. Diese werden mit den zu erwartenden technischen Auswirkungen sowie den Auswirkungen auf das Unternehmen kombiniert und bestimmen damit das individuelle Gesamtrisiko.

{%- include t10_subsection.html pos="left" text="Was sind <u>meine</u> Risiken?" width='77%' -%}
Die [OWASP Top 10](https://owasp.org/www-project-top-ten) beschreibt die schwerwiegendsten Risiken von Webanwendungen, die für ein breites Spektrum an Organisationen relevant sind. Für jedes dieser zehn Risiken stellen wir Informationen zu den beeinflussen-den Faktoren und den technischen Auswirkungen zur Verfügung. Zur Einschätzung verwenden wir folgendes Bewertungsschema auf Basis der [OWASP-Risk-Rating-Methode](/www-community/OWASP_Risk_Rating_Methodology):<br>
<br>
{% include risk_factor_names_table.html %}
<br>
Mit der diesjährigen Ausgabe haben wir die Tabellen der Risikobewertung überarbeitet, um die Berechnung des Risiko nachvollziehbarer zu machen.<br>Für die Details der Verbesserungen sei hier auf den Abschnitt "[Anmerkungen zum Risikobegriff](Anmerkungen_zum_Risikobegriff)" verwiesen.
<br>
Jedes Unternehmen und jede Organisation unterscheidet sich von allen anderen. Ebenso die Angreifer, deren Ziele und die Auswirkungen eines Sicherheitsvorfalles. Wenn beispielsweise eine Organisation ein Content-Management-System (CMS) für eine öffentliche Webseite nutzt, eine andere Firma das gleiche CMS nutzt, um darin (datenschutzrelevante) Patientendaten zu speichern, so können Sicherheitsvorfälle auch bei Einsatz gleicher Software sehr unterschiedliche Auswirkungen haben. Es ist also notwendig bei der Risikobewertung die Risiken, die sich aus der Tätigkeit des Unternehmens ergeben im Blick zu haben und diese auch wirklich umfassen zu verstehen.<br>
Die Namen der Risiken tragen – soweit möglich – die allgemein üblichen Bezeichnungen um das allgemeine Verständnis zu erhöhen und möglichst wenig zu verwirren. Siehe auch: [Common Weakness Enumeration](https://cwe.mitre.org/data/index.html) (CWE).

{%- include t10_subsection.html pos="right" text="Referenzen" -%}
**OWASP:**<br>
* [OWASP Risk Rating Methodology](/www-community/OWASP_Risk_Rating_Methodology)<br>
* [Article on Threat/Risk Modeling (altes Wiki)](https://wiki.owasp.org/index.php/Threat_Risk_Modeling)<br>
<br>
**Andere:**<br>
* [ISO 31000: Risk Management Std](https://www.iso.org/iso-31000-risk-management.html)<br>
* [ISO 27001: ISMS](https://www.iso.org/isoiec-27001-information-security.html)<br>
* [NIST Cyber Framework (US)](https://www.nist.gov/cyberframework)<br>
* [ASD Strategic Mitigations (AU)](https://www.asd.gov.au/infosec/mitigationstrategies.htm)<br>
* [NIST CVSS 3.0](https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator)<br>
* [Microsoft Threat Modelling Tool](https://aka.ms/tmt)<br>
{%- include t10_subsection_end.html -%}
