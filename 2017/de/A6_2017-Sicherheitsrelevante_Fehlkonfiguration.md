---

document: OWASP Top Ten 2017 (de)
year: 2017
order: 12
en: A6_2017-Security_Misconfiguration
title: A6:2017-Sicherheitsrelevante Fehlkonfiguration
lang: de
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017 (de), Top Ten, A6:2017, de
exploitability: 3
prevalence: 3
detectability: 3
technical: 2
redirect_from:
  - 2017/de/A6_2017-Security_Misconfiguration

---

{% include risk_begin.html %}
{%- include risk_description.html pos="firstLeft" -%}
<!--- Threat Agent: --->
Angreifer versuchen oft, ungepatchte Schwachstellen, Standard-Konten, ungenutzte (Beispiel-)Seiten, ungeschützte Dateien etc. auszunutzen, um einen unerlaubten Zugriff oder Informationen über das System zu erlangen.
{%- include risk_description.html pos="mid" -%}
<!--- Security Weakness: --->
Sicherheitsrelevante Fehlkonfiguration kann auf jeder Ebene der Anwendung, einschließlich der Netzwerkdienste, Plattform, Web- und Anwendungsserver, Datenbank, Frameworks, Anwendungscode, vorinstallierte virtuelle Maschinen und Container oder Speicher vorkommen.<br>Automatisierte Scanner können oft Fehlkonfigurationen, Standard-Konten oder -Konfigurationen, nicht benötigte Dienste, Kompatibilitäten usw. erkennen.
{%- include risk_description.html pos="right" -%}
<!--- Impacts: --->
Diese Fehler geben Angreifern häufig unautorisierten Zugriff auf Systemdaten oder -funktionalitäten. Manchmal führen sie zur kompletten Kompromittierung des Zielsystems.<br>Die Auswirkungen auf das Unternehmen hängen vom Schutzbedarf der Anwendung und ihrer Daten ab.
{%- include risk_end.html -%}

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html token="isTheApplicationVulnerable" pos="firstLeft" -%}
Die Anwendung könnte in folgenden Fällen verwundbar sein:<br>
* Mangelhafte Sicherheitshärtung des Anwendungsstacks oder ungeeignet konfigurierte Berechtigungen von Clouddiensten.<br>
* Nicht benötigte Features sind aktiviert oder installiert (z.B. unnötige Ports, Dienste, Seiten, Nutzer oder Rechte).<br>
* Standardnutzer und -passwörter sind aktiviert, bzw. unverändert.<br>
* Die Fehlerbehandlung gibt Stack-Traces oder andere interne technische Fehlermeldungen an den Nutzer preis.<br>
* Für aktualisierte Systeme sind die neuesten Sicherheitsfeatures deaktiviert oder nicht sicher konfiguriert.<br>
* Die Sicherheitseinstellungen in den Anwendungsservern und -frameworks (z.B. Struts, Spring, ASP.NET), Bibliotheken, Datenbanken etc. sind nicht auf sichere Werte gesetzt.<br>
* Der Server sendet keine Sicherheits-Header oder -Direktiven, bzw. diese sind nicht sicher konfiguriert.<br>
* Die Software ist veraltet oder verwundbar (siehe [A9:2017-Nutzung von Komponenten mit bekannten Schwachstellen](A9_2017-Nutzung_von_Komponenten_mit_bekannten_Schwachstellen)).<br>
Ohne einen abgestimmten und reproduzierbaren Prozess sind Systeme einem höheren Risiko ausgesetzt!

{%- include t10_subsection.html token="howToPrevent" pos="right" -%}
Sichere Installationsprozesse sind zu implementieren:<br>
* Ein wiederholbarer Härtungsprozess, der eine schnelle und einfache Verteilung einer neuen, abgesicherten Umgebung erlaubt. Entwicklungs-, QA- und Produktionsumgebungen sollten identisch konfiguriert sein, mit unterschiedlichen Passwörtern je Umgebung. Der Prozess sollte automatisiert sein, um den nötigen Aufwand bei Erstellung einer neuen, sicheren Umgebung zu minimieren.<br>
* Eine Minimalplattform ohne unnötige Features, Komponenten, Dokumentation und Beispiele. Entferne, bzw. Vermeide die Installation nicht benötigter Features und Frameworks.<br>
* Review und Update der Konfigurationen entsprechend aller Sicherheitshinweise, Updates und Patches als Teil des präventiven CERT-Prozesses (siehe [A9:2017-Nutzung von Komponenten mit bekannten Schwachstellen](A9_2017-Nutzung_von_Komponenten_mit_bekannten_Schwachstellen)). Überprüfen Sie auch die Cloudspeicher-Rechte (z.B. S3-Bucket-Rechte).<br>
* Eine segmentierte Anwendungsarchitektur, die eine effektive, sichere Trennung zwischen Komponenten oder Mandanten, unter Nutzung von Segmentierung, Containerisierung oder Cloud-Sicherheitsgruppen, gewährleistet.<br>
* An den Client Sicherheitsdirektiven, z.B. [Security Header](/www-project-secure-headers) senden.<br>
* Ein automatisierter Prozess zum Verifizieren der Effektivität der Konfigurationen und Einstellungen in allen Umgebungen.

{%- include t10_subsection.html token="exampleAttackScenarios" pos="left" -%}
**Szenario 1**: Der Anwendungsserver wird in der Produktion mit Beispielanwendungen installiert. Diese enthalten bekannte Sicherheitslücken, die Angreifer ausnutzen könnten um den Server zu kompromittieren. Im Fall einer Adminkonsole könnten unveränderte Standardpasswörter zu einer Übernahme durch einen Angreifer führen.<br>
<br> 
**Szenario 2**: Directory Listings wurden auf dem Server nicht deaktiviert. Ein Angreifer findet in einer Verzeichnisliste die kompilierten Javaklassen und lädt diese herunter zur Dekompilierung und Reverse Engineering des Codes, um diesen lesen zu können. Der Angreifer findet ernste Schwachstellen in der Zugriffskontrolle der Anwendung.<br>
<br>
**Szenario 3**: Die Konfiguration des Anwendungsserver ermöglicht detaillierte Fehlermeldungen, z.B. Stack-Traces an den Nutzer.<br>Dies enthüllt möglicherweise sensitive Informationen oder grundlegende Fehler wie verwundbare Versionen von Komponenten.<br>
<br>
**Szenario 4**: Ein Cloud-Dienst enthält Standardfreigaben, die aus dem Internet für andere Cloud-Nutzer erreichbar sind und ermöglicht dadurch Zugriff auf sensitive Daten in der Cloud.

{%- include t10_subsection.html token="references" pos="right" -%}
**OWASP**<br>
* [OWASP Testing Guide: Configuration Management](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/02-Configuration_and_Deployment_Management_Testing/README)<br>
* [OWASP Testing Guide: Testing for Error Codes](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/08-Testing_for_Error_Handling/01-Testing_for_Error_Code)<br>
Weitere Informationen unter [Application Security Verification Standard] (/www-project-application-security-verification-standard) V19 Configuration.<br>
<br>
**Andere**<br>
* [NIST Guide to General Server Hardening](https://csrc.nist.gov/publications/detail/sp/800-123/final)<br>
* [CWE-2: Environmental Security Flaws](https://cwe.mitre.org/data/definitions/2.html)<br>
* [CWE-16: Configuration](https://cwe.mitre.org/data/definitions/16.html)<br>
* [CWE-388: Error Handling](https://cwe.mitre.org/data/definitions/388.html)<br>
* [CIS Security Configuration Guides/Benchmarks](https://www.cisecurity.org/cis-benchmarks/)<br>
* [Amazon S3 Bucket Discovery and Enumeration](https://blog.websecurify.com/2017/10/aws-s3-bucket-discovery.html)<br>
{% include t10_subsection_end.html %}