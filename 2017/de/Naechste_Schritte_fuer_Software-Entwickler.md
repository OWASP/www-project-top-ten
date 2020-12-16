---

document: OWASP Top Ten 2017 (de)
year: 2017
order: 17
en: What%27s_Next_for_Developers
title: Nächste Schritte für Software-Entwickler
lang: de
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017 (de), Top Ten, de
redirect_from:
  - 2017/de/What%2527s_Next_for_Developers

---

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html pos="firstWhole" text="Umfassende Sicherheitsmaßnahmen etablieren und nutzen" -%}
Egal ob man ein Neuling im Bereich der Webanwendungssicherheit ist oder schon mit den erläuterten Gefahren vertraut ist – die Entwicklung einer neuen sicheren Webanwendung oder das Absichern einer bereits existierenden kann sehr schwierig sein. Für die Betreuung eines großen Anwendungsportfolios kann das sehr abschreckend sein.<br>
Um Organisationen und Entwicklern dabei zu helfen Ihre Anwendungssicherheitsrisiken kostengünstig zu reduzieren, stellt OWASP zahlreiche <u>kostenlose und frei zugängliche</u> Ressourcen zur Verbesserung der Anwendungssicherheit zur Verfügung. Im Folgenden werden einige dieser OWASP-Ressourcen, die Organisationen helfen können sichere Webanwendungen oder APIs zu erstellen, vorgestellt. Auf der nächsten Seite stellen wir einige OWASP-Ressourcen vor, die Organisationen dabei helfen können Ihre Anwendungssicherheit zu überprüfen.
<br>

{% include t10_subsection_inner_round_box.html
   topic='**Anwendungs-<br>sicherheits-<br>anforderungen:**'
   description='
       Um eine sichere Web Anwendung zu erstellen ist es wichtig vorher zu definieren was "sicher" im Falle einer speziellen Anwendung bedeutet. OWASP empfiehlt dazu den [OWASP Application Security Verification Standard (ASVS)](/www-project-application-security-verification-standard) als Leitfaden zur Erstellung von Sicherheitsanforderungen. Bei Outsourcing der Anwendungsentwicklung empfiehlt sich der [OWASP Secure Software Contract Annex](/www-community/OWASP_Secure_Software_Contract_Annex) ([deutsch im alten Wiki](https://wiki.owasp.org/index.php/OWASP_Secure_Software_Contract_Annex_German)).<br><b>Hinweis:</b> Das Dokument ist ausschließlich als Orientierungshilfe anzusehen, es bezieht sich auf US-Recht. Konsultieren Sie in jedem Fall einen spezialisierten Anwalt, bevor Sie es benutzen.'
%}
{% include t10_subsection_inner_round_box.html
   topic='**Anwendungs-<br>sicherheits-<br>architektur:**'
   description='
       Anstatt Sicherheit nachträglich in eine Anwendung oder API einzubauen, ist es kosteneffektiver, diese schon beim Design zu beachten. OWASP empfiehlt hierzu die [OWASP Prevention Cheat Sheets](/www-project-cheat-sheets) als einen guten Startpunkt, um die Anwendung von Anfang an sicher zu konstruieren.'
%}
{% include t10_subsection_inner_round_box.html
   topic='**Standardisierte<br>Sicherheits-<br>maßnahmen:**'
   description='
       Die Entwicklung starker und anwendbarer Sicherheitsmaßnahmen ist nicht trivial. Standardisierte Sicherheitsmaßnahmen vereinfachen die Entwicklung sicherer Anwendungen oder APIs. [OWASP Proactive Controls](www-project-proactive-controls) ist ein guter Startpunkt für Entwickler. Viele moderne Frameworks enthalten heute schon standardmäßig effektive Sicherheitsprüfungen für Autorisierung, Validierung, CSRF-Schutz etc.'
%}
{% include t10_subsection_inner_round_box.html
   topic='**Sicherer<br>Entwicklungs-<br>zyklus:**'
   description='
       Um den Prozess zur sicheren Anwendungserstellung in einer Organisation zu verbessern, empfiehlt OWASP das [OWASP Software Assurance Maturity Model (SAMM)](/www-project-samm).  Das Modell hilft bei der Formulierung und Umsetzung einer Software Sicherheitsstrategie, die die spezifischen Risiken Ihrer eigenen Organisation berücksichtigt.'
%}
{% include t10_subsection_inner_round_box.html
   topic='**Trainings für<br>Anwendungs-<br>sicherheit:**'
   description='
       Das [OWASP Education Project (altes Wiki)](https://wiki.owasp.org/index.php/Category:OWASP_Education_Project) bietet Trainingsunterlagen zur Schulung von Entwicklern im Bereich der Webanwendungssicherheit. Um praxisbezogene Erfahrungen über Schwachstellen zu sammeln empfiehlt die OWASP [OWASP WebGoat](/www-project-webgoat), [WebGoat.NET (altes Wiki)](https://wiki.owasp.org/index.php/Category:OWASP_WebGoat.NET),  [OWASP NodeJS Goat](www-project-node.js-goat/), [OWASP Juice Shop Project](/www-project-juice-shop) oder das [OWASP Broken Web Applications Project](/www-project-broken-web-applications) [(altes Wiki)](https://wiki.owasp.org/index.php/OWASP_Broken_Web_Applications_Project). Um aktuell zu bleiben besuchen Sie die [OWASP AppSec Conference](/events), [OWASP Conference Training](/events), ein OWASP Training oder eines der lokalen [OWASP Chapter Meetings](/chapters) und [Stammtische](/www-chapter-germany/stammtische).'
%}
Es stehen zahlreiche weitere OWASP Ressourcen zur Verfügung. Besuchen Sie die [OWASP Projekt](/projects)-Übersicht, die eine Liste aller Flagship-, Lab- und Incubator-Projekte des OWASP Projektinventars bereitstellt. Viele OWASP Ressourcen sind auf unserer [Webseite](https:/owasp.org/) verfügbar und können auch in [Papierformat oder als eBook](https://stores.lulu.com/owasp) bestellt werden.
{%- include t10_subsection_end.html -%}
