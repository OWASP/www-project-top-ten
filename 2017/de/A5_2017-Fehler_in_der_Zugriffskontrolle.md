---

document: OWASP Top Ten 2017 (de)
year: 2017
order: 11
en: A5_2017-Broken_Access_Control
title: A5:2017-Fehler in der Zugriffskontrolle
lang: de
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017 (de), Top Ten, A5:2017, de
exploitability: 2
prevalence: 2
detectability: 2
technical: 3
redirect_from:
  - 2017/de/A5_2017-Broken_Access_Control

---

{% include risk_begin.html %}
{%- include risk_description.html pos="firstLeft" -%}
<!--- Threat Agent: --->
Es gehört zu den Kernfähigkeiten von Angreifern, Zugangskontrollen zu umgehen. Während [SAST](/www-community/Source_Code_Analysis_Tools) und [DAST](/www-community/Vulnerability_Scanning_Tools) fehlende Zugangskontrollen erkennen, können sie nicht prüfen, ob vorhandene Kontrollen korrekt funktionieren. Dies kann manuell erkannt werden; in manchen Frameworks sind fehlende Zugangskontrollen automatisiert erkennbar.
{%- include risk_description.html pos="mid" -%}
<!--- Security Weakness: --->
Auf Grund fehlender automatisierter Erkennung bzw. fehlender Funktionstests in der Entwicklung sind Schwachstellen bei der Zugriffskontrolle häufig.<br>Generell sind statische oder dynamische Tests nicht für die Erkennung von Zugangskontrollen geeignet. Manuelles Testen ist der beste Weg, um fehlende oder ineffektive Zugriffskontrollen zu erkennen, einschließlich HTTP-Methoden (GET vs. PUT etc.), Controller, direkte Objektreferenzen etc.
{%- include risk_description.html pos="right" -%}
<!--- Impacts: --->
Als technische Auswirkungen können Angreifer als andere Benutzer oder Administratoren agieren, bzw. können Angreifer privilegierte Funktionen nutzen, Datensätze erstellen, aufrufen, aktualisieren oder löschen.<br>Die Auswirkungen auf das Unternehmen hängen vom Schutzbedarf der Anwendung und ihrer Daten ab.
{%- include risk_end.html -%}

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html token="isTheApplicationVulnerable" pos="firstLeft" -%}
Zugriffskontrollmechanismen setzen Richtlinien um, so dass Benutzer nur innerhalb ihrer beabsichtigten Berechtigungen handeln können. Fehlerfälle führen hier in der Regel zu unbefugter Offenlegung, Änderung oder Löschung von Daten oder zu einer Geschäftshandlung außerhalb der Befugnisse des Benutzers. Zu den häufigsten Schwachstellen gehören:<br>
* Umgehen von Zugriffskontrollprüfungen durch Ändern der URL, des internen Anwendungsstatus oder der HTML-Seite oder einfach durch Verwendung eines API-Angriffswerkzeugs.<br>
* Änderbarkeit des Primärschlüssels zu dem eines anderen Benutzers, so dass das Konto dieses Benutzers angezeigt oder bearbeitet werden kann.<br>
* Rechteausweitung: Als Benutzer handeln, ohne angemeldet zu sein oder als Administrator handeln, wenn man als Benutzer angemeldet ist.<br>
* Metadatenmanipulationen, wie z.B. das erneute Verwenden/Manipulieren eines JSON Web Tokens (JWT), Zugriffskontroll-Tokens, Cookies oder versteckten Feldes, um Berechtigungen auszuweiten oder der Missbrauch der JWT-Invalidierung.<br>
* Fehlkonfigurationen von CORS ermöglichen einen unbefugten API-Zugriff.<br>
* Aufrufen authentifizierter Seiten als nicht authentifizierter Benutzer oder privilegierter Seiten als Standardbenutzer. Zugriff auf die API durch fehlenden Zugriffskontrollen für POST, PUT und DELETE.

{%- include t10_subsection.html token="howToPrevent" pos="right" -%}
Eine Zugriffskontrolle ist nur wirksam, wenn sie im vertrauenswürdigen serverseitigen Code oder über eine Serverless API betrieben wird, so dass der Angreifer die Zugriffskontrollprüfung oder die verwendeten Metadaten nicht manipulieren kann.<br>
* Mit Ausnahme von Zugriffen auf öffentliche Ressourcen sollten Anfragen standardmäßig verweigert werden.<br>
* Zugriffskontrollmechanismen sollten einmalig implementiert und in der gesamten Anwendung wiederverwendet werden. Dies bedeutet auch eine CORS-Minimierung.<br>
* Zugriffskontrollmechanismen müssen die Berechtigung für Datensätzen anhand des Dateneigners kontrollieren anstatt zu akzeptieren, dass Benutzer beliebige Datensätze erstellen, lesen, aktualisieren oder löschen können.<br>
* Sich gegenseitig ausschließende Rechte sollten durch Berechtigungskonzepte durchgesetzt werden.<br>
* Deaktivierung von Verzeichnisauflistungen bei Webservern und Sicherstellen, dass keine Meta- und Backupdateien (z.B. .git) in Web-Roots abgelegt werden.<br>
* Zugriffsfehler müssen protokolliert und ggf. Administratoren alarmiert werden (z.B. bei wiederholten Fehlern).<br>
* API- und Controller-Zugriffe über Quotas beschränken, um den Schaden durch automatisierte Angriffs-Tools zu minimieren.<br>
* JWT-Token sollten nach dem Abmelden auf dem Server invalidiert werden. Entwickler und QS-Teams sollten die Zugangskontrolle in funktionalen Unit- u. Integrationstests einbeziehen.

{%- include t10_subsection.html token="exampleAttackScenarios" pos="left" -%}
**Szenario 1**: Eine Anwendung verarbeitet nicht verifizierte Daten in einem SQL-Aufruf, der auf Kontoinformationen zugreift:<br>

    {% include code_red_begin.html -%} pstmt.setString(1, request.getParameter("acct")); {%- include code_red_end.html %}
    {% include code_red_begin.html -%} ResultSet results = pstmt.executeQuery( ); {%- include code_red_end.html %}

Ein Angreifer ändert nun den Parameter "acct" im Browser in eine beliebige Kontonummer. Werden Eingangsdaten nicht ordnungsgemäß verifiziert, kann ein Angreifer auf das Konto eines beliebigen Benutzers zugreifen.<br>

    {% include code_red_begin.html -%} http://example.com/app/accountInfo?acct=notmyacct {%- include code_red_end.html %}
<br>
**Szenario 2**: Szenario 2: Ein Angreifer erzwingt den Aufruf einer Ziel-URL. Für den Zugriff auf die Admin-Seite sind Administratorrechte erforderlich.<br>

    {% include code_red_begin.html -%} http://example.com/app/getappInfo {%- include code_red_end.html %}
    {% include code_red_begin.html -%} http://example.com/app/admin_getappInfo {%- include code_red_end.html %}

Wenn ein unauthentifizierter Benutzer auf eine der beiden URLs zugreifen kann, liegt ein Fehlerfall vor. Wenn ein Nicht-Administrator auf die Admin-Seite zugreifen kann, ist dies ebenfalls ein Fehler.

{%- include t10_subsection.html token="references" pos="right" -%}
**OWASP**<br>
* [OWASP Proactive Controls: Enforce Access Controls](/www-project-proactive-controls/v3/en/c7-enforce-access-controls)<br>
* [OWASP Application Security Verification Standard: V4 Access Control](/www-project-application-security-verification-standard)<br>
* [OWASP Testing Guide: Authorization Testing](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/05-Authorization_Testing/README)<br>
* [OWASP Cheat Sheet: Access Control](https://cheatsheetseries.owasp.org/cheatsheets/Access_Control_Cheat_Sheet.html)<br>
<br>
**Andere**<br>
* [CWE-22: Improper Limitation of a Pathname to a Restricted Directory ('Path Traversal')](https://cwe.mitre.org/data/definitions/22.html)<br>
* [CWE-284: Improper Access Control (Authorization)](https://cwe.mitre.org/data/definitions/284.html)<br>
* [CWE-285: Improper Authorization](https://cwe.mitre.org/data/definitions/285.html)<br>
* [CWE-639: Authorization Bypass Through User-Controlled Key](https://cwe.mitre.org/data/definitions/639.html)<br>
* [PortSwigger: Exploiting CORS misconfiguration](https://portswigger.net/blog/exploiting-cors-misconfigurations-for-bitcoins-and-bounties)<br>
{%- include t10_subsection_end.html -%}
