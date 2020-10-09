---

document: OWASP Top Ten 2017 (de)
year: 2017
order: 3
en: Introduction
title: Einleitung
lang: de
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017 (de), Top Ten, de
redirect_from:
  - 2017/de/Introduction

---

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html pos="firstWhole" text="Herzlich Willkommen zu OWASP Top 10 - 2017!" -%}
Diese große Überarbeitung bringt mehrere neue Themen, darunter zwei von der OWASP-Community ausgewählte Aspekte – [A8:2017-Unsichere Deserialisierung](A8_2017-Unsichere_Deserialisierung) und [A10:2017-Unzureichendes Logging & Monitoring](A10_2017-Unzureichendes_Logging%2526Monitoring). Zwei wesentliche Unterschiede zu früheren OWASP Top 10-Ausgaben sind das starke Feedback durch die Community und eine umfangreiche Datenerhebung durch dutzende von Organisationen, vermutlich die größte die je für die Vorbereitung von Best-Practices für Anwendungssicherheit erhoben wurde. Dies gibt uns das Vertrauen, dass die neuen OWASP Top10 die Sicherheitsrisiken in Anwendungen mit den größten Auswirkungen für Organisationen adressiert.<br>
In erster Linie basiert OWASP Top 10 – 2017 auf über 40 Datenzulieferungen von auf Anwendungssicherheit spezialisierten Firmen und auf einer Befragung von über 500 Sicherheitsexperten. Die Datenzulieferung umfasst die Schwachstellen von hunderten von Firmen mit insgesamt über 100.000 existierenden Anwendungen und APIs. Die Top 10 Rangliste ergibt sich aus den Verbreitungsdaten in Verbindung mit abgestimmten Abschätzungen zu Ausnutzbarkeit, Nachweisbarkeit und Auswirkungen.<br>
Es ist ein wesentliches Ziel der OWASP Top 10, Entwickler, Designer, Architekten und Führungskräfte von Organisationen und Unternehmen über die Risiken der wichtigsten Schwachstellen von Webanwendungen aufzuklären. Die Top 10 stellen grundlegende Techniken zum Schutz gegen diese hochriskanten Probleme vor. Sie zeigen auch auf, wie es danach weitergeht.<br>

{%- include t10_subsection.html pos="left" text="Roadmap für weitere Aktivitäten" -%}
**Hören Sie nicht bei 10 auf!** Es gibt hunderte von Problemen, die Auswirkungen auf die Gesamtsicherheit einer Webanwendung haben wie im [OWASP Developer's Guide](https://wiki.owasp.org/index.php/OWASP_Guide_Project) und in der [OWASP Cheat Sheet Series](/www-project-cheat-sheets). dargestellt. Diese sollten von jedem Entwickler von Webanwendungen und APIs gelesen werden. Ein Leitfaden zum effizienten Finden von Schwachstellen in Webanwendungen uns APIs liefert der [OWASP Security Testing Guide](/www-project-web-security-testing-guide).<br>
<br>
**Ständiger Wandel!** Die OWASP Top 10 befinden sich in stetem Wandel. Ohne eine einzige Codezeile in der Anwendung zu ändern kann sie angreifbar werden sobald neue Schwachstellen aufgedeckt und Angriffsmethoden verfeinert werden. Bitte berücksichtigen Sie die Ratschläge am Ende der Top 10 unter Nächste Schritte für <b>[Entwickler](Naechste_Schritte_fuer_Software-Entwickler)</b>, <b>[Sicherheitstester](Naechste_Schritte_fuer_Sicherheitstester)</b>, <b>[Organisationen](Naechste_Schritte_fuer_Organisationen)</b> und <b>[Anwendungs-Verantwortliche](Naechste_Schritte_fuer_Anwendungs-Verantwortliche)</b> für mehr Informationen.<br>
<br>
**Denke positiv!** Wenn Sie bereit sind, das bloße Reagieren auf Schwachstellen zu beenden und stattdessen den Fokus auf die Implementierung von starken Sicherheitsfunktionen in der Anwendung legen wollen, ist das [OWASP Proactive Controls](/www-project-proactive-controls)-Projekt ein guter Startpunkt für Entwickler, um Sicherheit in ihre Anwendungen einzubauen. Der [OWASP Application Security Verification Standard (ASVS)](/www-project-application-security-verification-standard) ist ein Leitfaden für Organisationen und Prüfer von Anwendungen.<br>
<br>
**Nutze Tools mit Bedacht!** Sicherheitslücken können sehr komplex und versteckt im Code sein. Oft ist zum Finden und Beseitigen dieser Lücken der Einsatz von Experten mit Profi-Tools am kosteneffektivsten. Das alleinige Vertrauen auf Tools gibt ein trügerisches Sicherheitsgefühl und wird nicht empfohlen.<br>
<br>
**Schauen Sie über den Tellerrand!** Machen Sie Sicherheit zu einem integrierten Bestandteil Ihrer IT-Organisation. Informieren Sie sich über das [OWASP Software Assurance Maturity Model (SAMM)](/www-project-samm).

{%- include t10_subsection.html pos="right" text="Danksagung" -%}
Unser Dank gilt den Firmen für das Bereitstellen der Daten über Sicherheitslücken für die 2017-Aktualisierung. Wir erhielten mehr als 40 Antworten auf unseren Aufruf zur Datenerhebung. Zum ersten Mal sind alle zu dem neuen Release beigesteuerten Daten und die vollständige Liste der Mitwirkenden öffentlich einsehbar. Wir denken, dass dies eine der größeren vielfältigeren Schwachstellensammlungen ist, die je öffentlich gesammelt wurden.<br>
<br>
Aus Platzgründen werden die beitragenden Firmen auf einer <b>[eigenen Seite](Danksagung)</b> gewürdigt. Wir möchten diesen 
Organisationen herzlichst dafür danken, dass sie ganz vorne dabei sind und die gesammelten Schwachstellen öffentlich zur Verfügung gestellt haben. Wir hoffen, das wird sich weiterentwickeln und weitere Organisationen ermutigen diese Richtung zu gehen mit dem Ziel eine nachweisbaren Sicherheit. OWASP Top 10 wäre nicht möglich ohne diese fantastischen Beiträge.<br>
<br>
Ein großer Dank geht an über 500 Einzelpersonen die sich die Zeit für die Expertenumfrage nahmen. Ihre Stimme half bei der Aufnahme von zwei neuen Risiken in die OWASP Top 10. Die Kommentare, Ermutigungen und Kritikpunkte waren durchgehend willkommen. Wir wissen Ihre Zeit ist wertvoll und wir möchten Ihnen dafür danken.<br>
<br>
Wir wollen uns bei jenen Personen bedanken, die in besonderem Maße konstruktive Kommentare und Zeit für den Review dieses Updates beigesteuert haben. So weit wie möglich sind sie auf der Seite <b>['Danksagung'](Danksagung)</b> aufgeführt.<br>
<br>
Abschließend danken wir im Voraus allen Übersetzern dort draußen, die auf Grundlage diese Ausgabe eine neue Version der [Top 10 in zahlreichen Sprachen](/www-project-top-ten/#div-translation_efforts) erstellen, um die OWASP Top 10 auf dem ganzen Planet leichter zugänglich zu machen.<br>
{%- include t10_subsection_end.html -%}
