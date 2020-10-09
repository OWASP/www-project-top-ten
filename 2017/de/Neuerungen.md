---

document: OWASP Top Ten 2017 (de)
year: 2017
order: 4
en: Release_Notes
title: Neuerungen
lang: de
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017 (de), Top Ten, de
redirect_from:
  - 2017/de/Release_Notes

---

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html pos="firstWhole" text="Was hat sich von Version 2013 zu 2017 verändert?" -%}
Die Veränderungen haben in den letzten vier Jahren zugenommen, folglich wurden auch die OWASP Top 10 aktualisiert. Wir haben sie vollständig umgestaltet: die Methodik und den Prozess der Datenerhebung erneuert, mit der Community vollständig transparent zusammengearbeitet, die Risiken neu priorisiert, die Beschreibung der Risiken jeweils runderneuert und die Referenzen zu aktuellen Frameworks und Programmiersprachen angepasst.
In den letzten Jahren hat sich die eingesetzte Technologie und Architektur von Anwendungen signifikant geändert:<br>
* Microservices, die in node.js und Spring Boot geschrieben werden, ersetzen traditionelle monolithische Anwendungen. Micro-services bringen neue Herausforderungen an die IT-Sicherheit mit, wie z.B. Vertrauensbeziehungen zwischen Microservices, Containern und das Management der Anmeldedaten. Alter Code, der nie dafür geschrieben wurde, aus dem Internet erreichbar zu sein, wird nun via APIs oder RESTful Web-Service nach außen geöffnet, z.B. mittels Single-Page-Anwendungen (SPA) oder für mobile Apps. Architekturelle Annahmen für den Code, wie z.B. vertrauenswürdige Nutzer, sind nicht mehr gültig.<br>
* Single-Page-Anwendungen, die in JavaScript-Frameworks, wie z.B. Angular oder React geschrieben wurden, unterstützen die Entwicklung von sehr modularen Clients mit einem großen Funktionsumfang. Das Verlagern von Funktionen auf den Client, die traditionell auf dem Server lagen, erzeugt weitere Herausforderungen für die IT-Sicherheit.<br>
* JavaScript ist inzwischen die meistgenutzte Sprache im Web, mit node.js auf den Servern und modernen Web-Frameworks wie Bootstrap, Electron, Angular oder React auf dem Client. <br>
<br>
**Neue Risiken, auf Basis der Datenerhebung:**<br>
* <b>[A4:2017-XML External Entities (XXE)](A4_2017-XML External_Entities_(XXE))</b> ist eine neue Kategorie, die hauptsächlich per [Source-Code-Analyse-Sicherheits-Test-Tools](/www-community/Source_Code_Analysis_Tools) (SAST) gefunden wurde.<br>
<br>
**Neue Risiken, auf Basis der Expertenumfrage in der Community:**<br>
Wir haben die Community gebeten, zwei Risiken zu wählen, die zukünftig von größerer Bedeutung sein werden. Aufgrund der Ergebnisse der Expertenumfrage mit über 500 Einsendungen wurden nach dem Streichen von Risiken, die bereits aufgrund der Datenerhebung enthalten waren (z.B. Verlust der Vertraulichkeit sensibler Daten und XXE), folgende Risiken aufgenommen:<br>
* [**A8:2017-Unsichere Deserialisierung**](A8_2017-Unsichere_Deserialisierung), die ein externes Ausführen von beliebigem Code und die Manipulation von sensiblen Daten-Objekten auf betroffenen Plattformen ermöglicht.<br>
* [**A10:2017-Unzureichendes Logging & Monitoring**](A10_2017-Unzureichendes_Logging%2526Monitoring), das zum Übersehen oder zu beträchtlichen Verzögerungen beim Erkennen von bösartigen Aktivitäten oder digitalen Einbrüchen und dem Bearbeiten der Sicherheitsvorfälle sowie der digitalen Forensik führen kann.<br>
<br>
**Zusammengeführt oder aus den Top 10 ausgeschieden, jedoch nicht vergessen:**<br>
* <b>[A4-Unsichere direkte Objektreferenzen](https://wiki.owasp.org/index.php/Top_10_2013-A4-Insecure_Direct_Object_References)</b> und <b>[A7-Fehlerhafte Autorisierung auf Anwendungsebene](https://wiki.owasp.org/index.php/Top_10_2013-A7-Missing_Function_Level_Access_Control)</b> zusammengeführt (=vereint) zu <b>[A5:2017-Fehler in der Zugriffskontrolle](A5_2017-Fehler_in_der_Zugriffskontrolle)</b>.<br>
* <b>[A8-Cross-Site Request Forgery (CSRF)](https://wiki.owasp.org/index.php/Top_10_2013-A8-Cross-Site_Request_Forgery_(CSRF))</b>, da viele Frameworks Maßnahmen gegen [CSRF](/www-community/attacks/csrf) beinhalten, wurde diese Kategorie nur noch in 5% der Anwendungen gefunden.<br>
* <b>[A10-Ungeprüfte Um- und Weiterleitungen](https://wiki.owasp.org/index.php/Top_10_2013-A10-Unvalidated_Redirects_and_Forwards)</b>, das noch in ca. 8% der Anwendungen auftrat, wurde insbes. durch XXE verdrängt.<br>

{% include t10_subsection_end.html %}

{% include 2017/de/changes_from_2013_to_2017_table.html %}