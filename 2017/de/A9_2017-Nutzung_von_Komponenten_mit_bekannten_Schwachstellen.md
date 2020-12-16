---

document: OWASP Top Ten 2017 (de)
year: 2017
order: 15
en: A9_2017-Using_Components_with_Known_Vulnerabilities
title: A9:2017-Nutzung von Komponenten mit bekannten Schwachstellen.
lang: de
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017 (de), Top Ten, A9:2017, de
exploitability: 2
prevalence: 3
detectability: 2
technical: 2
redirect_from:
  - 2017/de/A9_2017-Using_Components_with_Known_Vulnerabilities

---

{% include risk_begin.html %}
{%- include risk_description.html pos="firstLeft" -%}
<!--- Threat Agent: --->
Für viele bekannte Schwachstellen ist es sehr einfach, existierende fertige Angriffe zu finden, für andere jedoch ist es erforderlich, unter gezieltem Aufwand einen maßgeschneiderten Angriffscode zu entwickeln.
{%- include risk_description.html pos="mid" -%}
<!--- Security Weakness: --->
Dieses Problem ist sehr weit verbreitet.<br>Komponentenlastige Entwicklungspattern können dazu führen, dass Entwicklerteams nicht einmal mehr verstehen, welche Komponenten sie in ihrer Applikation oder API benutzen, geschweige denn diese aktuell halten können.<br>Es existieren einige Scanner, wie zum Beispiel retire.js, die bei der Erkennung helfen. Das Ermitteln der Ausnutzbarkeit erfordert jedoch zusätzlichen Aufwand.
{%- include risk_description.html pos="right" -%}
<!--- Impacts: --->
Während einige bekannte Schwachstellen zu geringen Auswirkungen führten, basieren einige der größten bisherigen Sicherheitsvorfälle auf dem Ausnutzen bekannter Schwachstellen in benutzen Komponenten.<br>Abhängig von den zu beschützenden Assets sollte dieses Risiko ggf. ganz oben auf der Liste stehen.
{%- include risk_end.html -%}

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html token="isTheApplicationVulnerable" pos="firstLeft" -%}
Die Anwendung ist wahrscheinlich verwundbar, wenn:<br>
* keine Kenntnis über Versionen der in der Anwendung benutzten Komponenten (sowohl client- als auch serverseitig) besteht. Dies beinhaltet sowohl direkte als auch indirekte, verschachtelte Abhängigkeiten.<br>
* verwendete Software verwundbar, nicht mehr unterstützt oder veraltet ist. Dies beinhaltet das Betriebssystem, den Web-/Applikationsserver, das Datenbankmanagementsystem (DBMS), Anwendungen, APIs und alle verwendeten Komponenten, Laufzeitumgebungen sowie Bibliotheken.<br>
* Schwachstellenscans nicht regelmäßig durchgeführt werden und sicherheitsrelevante, die benutzten Komponenten betreffende Bulletins nicht abonniert sind.<br>
* die zugrundeliegende Plattform, das Framework und die Abhängigkeiten nicht risikobasiert und rechtzeitig repariert oder geupgradet werden. Dies passiert in der Regel in Umgebungen in denen Patchen eine monatliche oder quartalsweise Tätigkeit und einer Änderungskontrolle unterliegt. Dies setzt die Organisation unnötigerweise über Tage oder Monate dem Risiko von bereits gepatchten Schwachstellen aus.<br>
* Tests für Kompatibilität von geupdateter oder gepatchter Bibliotheken durch die Entwickler nicht durchgeführt werden.<br>
* die Komponenten nicht sicher konfiguriert werden (siehe [A6:2017-Sicherheitsrelevante Fehlkonfiguration](A6_2017-Sicherheitsrelevante_Fehlkonfiguration)).

{%- include t10_subsection.html token="howToPrevent" pos="right" -%}
Es sollte ein Patchmanagementprozess vorhanden sein:<br>
* Entferne unbenutzte Abhängigkeiten sowie unnötige Funktionen, Komponenten, Dateien und Dokumentationen.<br>
* Fortlaufendes Inventarisieren der Versionen aller client- und server-seitig benutzten Komponenten (z.B. Frameworks, Bibliotheken) sowie deren Abhängigkeiten unter Nutzung von Tools wie [versions](http://www.mojohaus.org/versions-maven-plugin/), [DependencyCheck](/www-project-dependency-check), [retire.js](https://github.com/retirejs/retire.js/), etc.  Fortlaufendes Auswerten von Quellen für Schwachstellen in Komponenten wie [CVE](https://cve.mitre.org/) und [NVD](https://nvd.nist.gov/). Einsatz von Tools zur automatisieren Analyse der Softwarebestandteile. Bezug von CERT- und Herstellermeldungen über Schwachstellen der Komponenten.<br>
* Komponenten sollten ausschließlich von offiziellen Quellen über sichere Verbindungen bezogen werden. Signierte Pakete sollten bevorzugt werden, um die Gefahr der Nutzung einer modifizierten bösartigen Komponente zu verringern.<br>
* Überwachung zum Identifizieren von Bibliotheken und Komponenten, die nicht gewartet werden oder keine Sicherheitsupdates für ältere Versionen bereitstellen. Sollte Patchen nicht möglich sein, sollte geprüft werden, einen [virtuellen Patch](/www-community/Virtual_Patching_Best_Practices) zu erstellen, um die gefundene Schwachstelle zu überwachen und um Angriffe zu entdecken und zu verhindern.<br>

Jede Organisation muss sicherstellen, dass ein fortlaufender Plan zur Überwachung, Bewertung und Anwendung von Updates oder Konfigurationsänderungen für die gesamte Lebenszeit einer Applikation oder des Portfolios besteht.

{%- include t10_subsection.html token="exampleAttackScenarios" pos="left" -%}
**Szenario 1**: Komponenten laufen typischerweise unter den selben Rechten wie die Anwendung selbst. Daher kann ein Fehler in einer beliebigen Komponente schwerwiegende Folgen haben. Solche Schwachstellen können sowohl durch ein Versehen (z.B. Programmierfehler) als auch vorsätzlich (z.B. Backdoor) in eine Komponente gelangen.<br>
Einige gefundene und ausnutzbare Beispiele sind:<br>
* [CVE-2017-5638](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-5638), eine Remote Code Execution Schwachstelle in Struts 2, die den Angreifer ermächtigt beliebigen Code auf dem Server auszuführen, wurde für einige erhebliche Sicherheitsvorfälle verantwortlich gemacht.<br>
* Obwohl das Patchen von Geräten des [internet of things (IoT)](https://en.wikipedia.org/wiki/Internet_of_things)oft nur sehr schwierig oder unmöglich ist, kann dies sehr wichtig sein (z.B. biomedizinische Geräte).<br>

Es existieren automatisierte Tools, die einem Angreifer helfen ungepatchte oder fehlkonfigurierte Systeme zu finden. Zum Beispiel kann die IoT-Suchmaschine Shodan benutzt werden, [um Geräte zu finden](https://www.shodan.io/report/89bnfUyJ), die immer noch für die im April 2014 gepatchte [Heartbleed-Schwachstelle](https://en.wikipedia.org/wiki/Heartbleed) verwundbar sind.

{%- include t10_subsection.html token="references" pos="right" -%}
**OWASP**<br>
* [OWASP Application Security Verification Standard:](/www-project-application-security-verification-standard) V1 Architecture, design and threat modelling<br>
* [OWASP Dependency Check (for Java and .NET libraries)](/www-project-dependency-check)<br>
* [OWASP Testing Guide - Map Application Architecture (OTG-INFO-010)](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/01-Information_Gathering/10-Map_Application_Architecture)<br>
* [OWASP Virtual Patching Best Practices](/www-community/Virtual_Patching_Best_Practices)<br>
<br>
**Andere**<br>
* [The Unfortunate Reality of Insecure Libraries](https://cdn2.hubspot.net/hub/203759/file-1100864196-pdf/docs/Contrast_-_Insecure_Libraries_2014.pdf) (vgl auch [OWASP AppSec DC](https://wiki.owasp.org/images/7/70/ASDC12-The_Unfortunate_Reality_of_Insecure_Libraries.pdf))<br>
* [MITRE Common Vulnerabilities and Exposures (CVE) search](https://www.cvedetails.com/version-search.php)<br>
* [National Vulnerability Database (NVD)](https://nvd.nist.gov/)<br>
* [Retire.js for detecting known vulnerable JavaScript libraries](https://github.com/retirejs/retire.js/)<br>
* [Node Libraries Security Advisories](https://nodesecurity.io/advisories)<br>
* [Ruby Libraries Security Advisory Database and Tools](https://rubysec.com/)
{% include t10_subsection_end.html %}
