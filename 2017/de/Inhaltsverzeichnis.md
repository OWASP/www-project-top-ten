---

document: OWASP Top Ten 2017 (de)
year: 2017
order: 0
en: Table_of_Contents
title: Inhaltsverzeichnis
lang: de
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017, Top Ten, de
permalink: 2017/de/
redirect_from:
  - 2017/de/Table_of_Contents
  - 2017/de

---

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html pos="firstLeft" text="Inhaltsverzeichnis" -%}
</div>
{%- assign top_ten_pages = site.pages | where:"document","OWASP Top Ten 2017 (de)" | sort: "order" -%}
{%- for ttp in top_ten_pages -%}
&bull; <a href="{{site.baseurl}}{{ ttp.url }}">{{ ttp.title }}</a><br>
{% endfor %}
<br>
Projekt Seite: <a href="{{site.github.url}}" title="{{site.project.name}}"> {{site.project.name}}</a><br>
<div>
{%- include t10_subsection.html pos="right" text="Über OWASP" -%}
Das Open Web Application Security Project (OWASP) ist eine offene Community. OWASP möchte Organisationen in die Lage versetzen, sichere und vertrauenswürdige Anwendungen zu entwickeln, zu kaufen und zu betreiben. 
<br>
<br>
Von OWASP kann man folgendes erwarten; stets frei verfügbar und jedermann zugänglich:<br>
* Werkzeuge- und Standards für sichere Anwendungen.<br>
* Bücher zu den Themen Prüfungen, Entwicklung und Quellcodeanalyse im Bereich der Anwendungssicherheit.<br>
* Vorträge und [Videos](https://www.youtube.com/user/OWASPGLOBAL).<br>
* ["Cheat sheets"](https://owasp.org/www-project-cheat-sheets/) zu vielen sicherheitsrelevanten Themen.<br>
* Standard Security-Controls und Programm-Bibliotheken.<br>
* [Lokale "Chapter" auf der ganzen Welt](https://owasp.org/chapters/) und <b>[Stammtische](/www-chapter-germany/stammtische/)</b>.<br>
* Neueste Forschung.<br>
* Große und häufige [Konferenzen auf der ganzen Welt](https://owasp.org/events/).<br>
* [Mailinglisten](https://groups.google.com/a/owasp.org/forum/#!overview). <br>
<br>
Alle Informationen auf [https://www.owasp.org](https://www.owasp.org) bzw. [https://www.owasp.de](https://www.owasp.de).<br>
<br>
Alle OWASP Werkzeuge, Dokumente, Videos, Präsentationen und Chapter sind frei verfügbar und stehen jedem offen, der Anwendungssicherheit weiterentwickeln möchte. 
<br><br>
Mangelnde Anwendungssicherheit begreifen wir als ein personen-, prozess- und technologie-bezogenes Problem, da die meisten wirksamen Ansätze für Anwendungssicherheit Verbesserungen in diesen Feldern erfordern.
<br><br>
OWASP ist eine neue Art von Organisation. Wir unterliegen keinem kommerziellen Druck. Das erlaubt uns unvoreingenommene, praktikable und kosteneffiziente Informationen über Anwendungssicherheit bereitzustellen. 
<br><br>
OWASP ist nicht von Dritten abhängig, wenngleich wir die sachkundige Verwendung freier und kommerzieller Technologien unterstützen. OWASP erstellt viele unterschiedliche Materialien auf Basis eines kollaborativen, transparenten und offenen Ansatzes. 
<br><br>
Die OWASP Foundation ist die gemeinnützige Organisation, die den langfristigen Erfolg des Projektes sicher stellt. Fast jeder bei OWASP ist ehrenamtlich tätig. Das schließt das Board, Chapter- und Projekt-Leiter, sowie Mitglieder ein. Wir unterstützen innovative Sicherheitsforschung mit Spenden, Förderungen und Infrastruktur.
<br><br>
[Machen Sie mit!](https://owasp.org/www-chapter-germany/)
{%- include t10_subsection_end.html -%}
