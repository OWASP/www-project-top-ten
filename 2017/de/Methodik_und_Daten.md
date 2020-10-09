---

document: OWASP Top Ten 2017 (de)
year: 2017
order: 23
en: Methodology_and_Data
title: Methodik und Daten
lang: de
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017 (de), Top Ten, de
redirect_from:
  - 2017/de/Methodology_and_Data

---

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html pos="firstWhole" text="Übersicht" -%}
Auf dem OWASP-Project-Summit 2017 entschieden sich aktive Teilnehmer und Community-Mitglieder für eine risikobasierten Reihenfolge mit bis zu zwei vorausschauend aufgenommenen Schwachstellenklassen. Die Reihenfolge wurde teilweise durch quantitative Daten und teilweise durch qualitative Erhebungen bestimmt.

{%- include t10_subsection.html  pos="whole" text="Rangliste auf Basis der Expertenumfrage in der Community" -%}
Für die Umfrage haben wir die Schwachstellenkategorien gesammelt, die zuvor als "an der Schwelle" identifiziert oder im Feedback zu 2017 RC1 in der Top 10 Mailingliste erwähnt wurden. Wir haben sie in eine Rangliste aufgenommen und die Befragten gebeten, die vier wichtigsten Schwachstellen zu bewerten, die ihrer Meinung nach in die OWASP Top 10 - 2017 aufgenommen werden sollten. Die Umfrage war vom 2. August bis 18. September 2017 offen. 516 Antworten wurden ausgewertet und die Schwachstellen entsprechend geordnet.<br>
<br>
{% include industry_ranked_survey_table.html %}
<br>
Die Offenlegung privater Informationen ist eindeutig die am höchsten eingestufte Schwachstelle, passt aber sehr gut als zusätzlicher Schwerpunkt in die bestehende **[A3:2017-Verlust der Vertraulichkeit sensibler Daten](A3_2017-Verlust_der_Vertraulichkeit_sensibler_Daten)**. Kryptographische Fehler können ebenfalls in diese Kategorie aufgenommen werden. Unsichere Deserialisierung wurde auf Platz drei eingestuft, so dass sie als **[A8:2017-Unsichere Deserialisierung](A8_2017-Unsichere_Deserialisierung)** in die Top 10 aufgenommen wurde. Das viertplatzierte Thema "User-Controlled Key" ist in **[A5:2017-Fehler in der Zugriffskontrolle](A5_2017-Fehler_in_der_Zugriffskontrolle)** mit enthalten. Es ist gut, dass es in der Umfrage einen hohen Rang einnimmt, da es bisher noch nicht viele Daten über Autorisierungsschwachstellen gibt. Das auf Platz 5 gelistete Thema ist "Insufficient Logging and Monitoring", passt unserer Meinung nach gut zu den Top 10 und wurde deshalb als **[A10:2017-Unzureichendes Logging &amp; Monitoring](A10_2017-Unzureichendes_Logging%2526Monitoring)** aufgenommen. Wir sind an einem Punkt gelangt, an dem Anwendungen in der Lage sein müssen, mögliche Angriffsindizien zu definieren, eine geeignete Protokollierung zu erzeugen und eine angemessene Alarmierung, Eskalation und Reaktion auszulösen.

{%- include t10_subsection.html  pos="whole" text="Öffentlicher Aufruf: Wir brauchen Daten!" -%}
Traditionell wurden bisher eher quantitative Daten gesammelt und analysiert: Wie viele Schwachstellen wurden in getesteten Anwendungen gefunden? Wie bekannt ist, melden Werkzeuge traditionell alle gefundenen Funde einer Schwachstelle. Menschen berichten traditionell über einen einzelnen Befund mit einer Reihe von Beispielen. Dies macht es sehr schwierig, die beiden Berichtsstile auf vergleichbare Weise zu aggregieren.<br>
<br>
In 2017 wurde die Häufigkeitsrate anhand der Anzahl der Anwendungen je Datensatz berechnet, die eine oder mehrere Schwachstellen eines bestimmten Typs aufwiesen. Die Daten von vielen größeren Mitwirkenden wurden auf zwei Arten zur Verfügung gestellt. Die erste war traditionell die Häufigkeit, bei der jedes gefundene Auftreten einer Schwachstelle gezählt wurde, während die zweite die Anzahl der Anwendungen ist, in denen die jeweilige Schwachstelle (ein oder mehrere Male) gefunden wurde. Obwohl nicht perfekt, erlaubt uns dies, die Daten von ‚Human Assisted Tools‘ (automatisierte Tests) und ‚Tool Assisted Humans‘ (manuelle Tests) zu vergleichen. Die Rohdaten und Analysearbeiten sind auf **[GitHub verfügbar](https://github.com/OWASP/Top10/tree/master/2017/datacall)**. Wir beabsichtigen, dies in den zukünftigen Versionen der Top 10 durch einen strukturierteren Ansatz weiter zu verbessern.<br>
<br>
Wir haben mehr als 40 Einreichungen für die Datenerhebung erhalten. Da viele von ihnen aus dem ursprünglichen Datenaufruf für den RC1 stammten, der sich auf die Auftrittshäufigkeit konzentrierte, haben wir die anwendungsbezogenen Daten von 23 Mitwirkenden verwendet, die ~114.000 Anwendungen umfassen. Wo immer möglich, haben wir einen einjährigen Zeitblock von Daten gleicher Anwendungen verwendet. Die Mehrzahl der gemeldeten Anwendungen sind einmal enthalten, obwohl es möglicherweise einige Dubletten bei den gemeldeten Anwendungen von Veracode gibt. Die 23 verwendeten Datensätze wurden als ‚‚Human Assisted Tools‘ bzw. ‚Tool Assisted Humans‘ klassifiziert. Anomalien in den ausgewählten Daten mit der Häufigkeit von über 100% wurden auf max. 100% angepasst. Um die Auftretungshäufigkeit zu berechnen, haben wir den Prozentsatz all der Anwendungen kalkuliert, bei denen festgestellt wurde, dass sie den jeweiligen Schwachstellentyp enthalten. Die Häufigkeit einer Schwachstelle ging bei der Berechnung des jeweiligen Risikowertes über den Risiko-Faktor 'Verbreitung' ein und wurde so in der Rangfolge der Top 10 berücksichtigt.
{%- include t10_subsection_end.html -%}
