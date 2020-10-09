---

document: OWASP Top Ten 2017 (de)
year: 2017
order: 21
en: Note_About_Risks
title: Anmerkungen zum Risikobegriff
lang: de
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017 (de), Top Ten, de
redirect_from:
  - 2017/de/Note_About_Risks

---

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html pos="firstWhole" text="Es geht um die Risiken, die Schwachstellen darstellen" -%}
Die Methode der Risikobewertung der Top 10 basiert auf der **[OWASP Risk Rating Methode](/www-community/OWASP_Risk_Rating_Methodology)**. Für jede Kategorie der Top 10 schätzten wir das typische Risiko ab, das die entsprechende Schwachstelle in einer üblichen Webanwendung verursacht, indem wir die allgemeinen Wahrscheinlichkeits- und Auswirkungs-Faktoren für die jeweilige Schwachstelle betrachte-ten. Dann sortierten wir die Top 10 gemäß der Schwachstellen, die im Allgemeinen das größte Risiko für eine Anwendung darstellen. Die zugrundeliegenden Faktoren werden für jede Version der Top 10 geprüft und auf einen aktuellen Stand gebracht, da sich Dinge ständig ändern und entwickeln.<br>
<br>
Die **[OWASP Risk Rating Methode](/www-community/OWASP_Risk_Rating_Methodology)** definiert zahlreiche Faktoren, die helfen, das Risiko einer gefundenen Schwachstelle zu bewerten. Unabhängig davon ist die Top 10 allgemein gehalten und geht weniger auf spezifische Schwachstellen realer Anwendungen und APIs ein. Daher können wir niemals so genau wie derjenige sein, der das Risiko für seine eigene(n) Anwendung(en) abschätzt. Nur Sie selbst können am besten beurteilen, wie hoch der konkrete Schutzbedarf der Anwendung ist, wie wichtig die verarbeiteten Daten sind, wer oder was die Bedrohungsquellen darstellen und wie das System entwickelt wurde und betrieben wird.<br>
<br>
**Unsere Methodik** beinhaltet drei Wahrscheinlichkeits-Faktoren für jede Schwachstelle („Verbreitung“, „Auffindbarkeit“ und „Ausnutzbarkeit“) und einen Faktor zur „Technischen Auswirkung“. Die Gewichtung für jeden Faktor liegt zwischen „1-Niedrig“ und „3-Hoch“, in geeigneter Terminologie für den jeweiligen Faktor. Die „Verbreitung“ einer Schwachstelle muss üblicherweise nicht abgeschätzt werden. Hierfür haben uns verschiedene Organisationen Statistiken zur Verfügung gestellt (vgl. Kapitel [„Danksagung“](Danksagung)), die wir zu einer Top 10 Liste des Wahrscheinlichkeits-Faktors für die „Verbreitung“ zusammengestellt haben. Diese Daten wurden dann mit den beiden anderen Wahrscheinlichkeits-Faktoren für "Auffindbarkeit" und "Ausnutzbarkeit" gemittelt, um eine Bewertung der Eintrittswahrscheinlichkeit für jede Schwachstelle zu berechnen. Dieser Wert wurde im Folgenden mit unserem Schätzwert für die "Technische Auswirkung" der jeweiligen Schwachstelle multipliziert, um so zu einer Gesamtbewertung der Risiko-Einstufung zu gelangen (je höher das Ergebnis, desto höher das Risiko). "Auffindbarkeit", "Ausnutzbarkeit" und "Technischen Auswirkungen" wurden dabei durch die Analyse der CVEs, die für die jeweiligen Kategorie der Top 10 einschlägig sind, bestimmt.<br>
<br>
<b>Es bleibt anzumerken</b>, dass dieser Ansatz die Wahrscheinlichkeit der Bedrohungsquelle nicht mit berücksichtigt, ebenso wenig wie irgendwelche technischen Details der betroffenen Anwendung. Jeder dieser Faktoren könnte die Gesamtwahrscheinlichkeit, dass ein Angreifer eine bestimmte Schwachstelle findet und ausnutzt, signifikant beeinflussen. Dieses Bewer-tungsschema berücksichtig auch nicht die Auswirkungen auf das jeweilige Unternehmen und die Geschäftsprozesse. Die betroffene Organisation oder das Unternehmen wird für sich selbst entscheiden müssen, welches Sicherheitsrisiko durch (verwundbare) Anwendungen oder APIs sie oder es bereit ist zu tragen. Es ist nicht Sinn und Zweck der OWASP Top 10, Ihnen diese Risikoanalyse abzunehmen oder für Sie durchzuführen.<br>
<br>
Die folgende Darstellung zeigt die Berechnung des Risikos für **[A6:2017-Sicherheitsrelevante Fehlkonfiguration](A6_2017-Sicherheitsrelevante_Fehlkonfiguration)**.<br>
{% include risk_calculation_table.html %}
{%- include t10_subsection_end.html -%}
