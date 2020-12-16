---

document: OWASP Top Ten 2017 (de)
year: 2017
order: 7
en: A1_2017-Injection
title: A1:2017-Injection
lang: de
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017 (de), Top Ten, A1:2017, de
exploitability: 3
prevalence: 2
detectability: 3
technical: 3

---

{% include risk_begin.html %}
{%- include risk_description.html pos="firstLeft" -%}
<!--- Threat Agent: --->
Beinahe jede Datenquelle kann einen Vektor für Injection darstellen: Umgebungsvariablen, Parameter, externe und interne Webservices können von jedem Nutzer, unabhängig von seiner jeweiligen Rolle, ausgenutzt werden.<br>[Injection flaws](/www-community/Injection_Flaws) Injection-Schwachstellen treten dann auf, wenn ein Angreifer bösartige Daten an einen Interpreter zur Verarbeitung schicken kann.
{%- include risk_description.html pos="mid" -%}
<!--- Security Weakness: --->
Injection Schwachstellen sind weit verbreitet, insbesondere in altem, ungewarteten Legacy-Code. Oft findet man sie in SQL-, NoSQL-, ORM-, LDAP- oder Xpath-Querys, ebenso bei Betriebssystem-Kommandos („OS Command Injection“), in XML- Parsern, SMTP-Headern und Expression Languages.<br>Injection-Schwachstellen sind durch das Prüfen des Quellcodes leicht zu finden. Schwachstellen-Scanner und Fuzzer können Angreifer beim Auffinden von Injection-Schwachstellen unterstützen. 
{%- include risk_description.html pos="right" -%}
<!--- Impacts: --->
Injection kann zu Datenverlust, -verfälschung, oder Offenlegung gegenüber unauthorisierten Dritten, Verlust der Zurechenbarkeit oder Zugangssperre führen. Unter Umständen kann es zu einer vollständigen Systemübernahme kommen. Die Auswirkungen auf das Unternehmen hängen vom Schutzbedarf der Anwendung und ihrer Daten ab. 
{%- include risk_end.html -%}

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html token="isTheApplicationVulnerable" pos="firstLeft" -%}
Eine Anwendung ist für diesen Angriff verwundbar, wenn:<br>
* Daten, die vom Nutzer stammen, nicht ausreichend validiert, gefiltert oder durch geeignete Sanitizer-Funktionen laufen.<br>
* Dynamische Anfragen oder nicht-parametrisierte Aufrufe ohne ein dem Kontext (SQL, LDAP, XML usw.) entsprechendes Escaping direkt einem Interpreter übergeben werden.<br>
* Bösartige Daten innerhalb von ORM („Objekt Relationales Mapping“)-Suchparametern genutzt werden können, um vertrauliche Datensätze eines Dritten zu extrahieren.<br>
* Bösartige Daten direkt oder als Teil zusammengesetzter dynamischer SQL-Querys, Befehle oder Stored Procedures genutzt werden können.<br>
<br>
Injection ist u.a. bei der Verwendung von SQL, NoSQL, ORM-Frameworks, Betriebssystem-Kommandos, LDAP, Expression Language (EL) , Object Graph Navigation Language (OGNL) oder XML zu finden. Das Grundkonzept eines Injection-Angriffs ist für alle Interpreter gleich. Ein Quellcode Review ist eine sehr gute Methode, um Injection-Schwachstellen zu finden, dicht gefolgt vom gründlichen (ggf. automatisierten) Testen aller Parameter und Variablen wie z.B. Eingabe-Felder und Header-, URL-, Cookies-, JSON-, SOAP- und XML-Eingaben. Statische ([SAST](/www-community/Source_Code_Analysis_Tools), Quellcode-Ebene) und dynamische ([DAST](/www-community/Vulnerability_Scanning_Tools), laufende Anwendung) Test-Werkzeuge können von Organisationen für ihre CI/CD-Pipeline genutzt werden, um neue Schwachstellen noch vor einer möglichen Produktivnahme aufzuspüren.<br>

{%- include t10_subsection.html token="howToPrevent" pos="right" -%}
Um Injection zu verhindern, müssen Eingabedaten und Kommandos (bzw. Querys) konsequent getrennt bleiben.<br>
* Die besten Methoden dafür sind entweder eine sichere API, die die direkte Interpreter-Nutzung vollständig vermeidet, bzw. die eine parametrisierte, typgebundene Schnittstelle anbietet oder die korrekte Verwendung eines ORM-Frameworks.<br><b>Anmerkung:</b> Stored Procedures können - auch parametrisiert - immer noch SQL-Injection ermöglichen, wenn PL/SQL oder T-SQL Anfragen und Eingabedaten konkateniert oder mit EXECUTE IMMEDIATE oder exec() ausgeführt werden.<br>
* Für die serverseitige Eingabe-Validierung empfiehlt sich die Nutzung eines Positivlisten(“Whitelist”)-Ansatzes. Dies ist i.A. kein vollständiger Schutz, da viele Anwendungen Sonder- und Meta-Zeichen z.B. für Textfelder oder Mobile Apps benötigen.<br>
* Für jede noch verbliebene dynamische Query müssen Sonder- und Meta-Zeichen für den jeweiligen Interpreter mit der richtigen Escape-Syntax entschärft werden. <br><b>Anmerkung:</b> Ein Escaping von SQL-Bezeichnern, wie z.B. die Namen von Tabellen oder Spalten usw. ist nicht möglich.<br>Falls Nutzer solche Bezeichner selbst eingeben können, so ist dies durchaus gefährlich. Dies ist eine übliche Schwachstelle bei Software, die Reports aus einer Datenbank erstellt.<br>
* Querys sollten LIMIT oder andere SQL-Controls verwenden, um den möglichen Massen-Abfluss von Daten zu verhindern.

{%- include t10_subsection.html token="exampleAttackScenarios" pos="left" -%}
<b>Szenario 1:</b> Eine Anwendung nutzt ungeprüfte Eingabedaten für den Zusammenbau der folgenden verwundbaren SQL-Abfrage:<br>
    {% include code_red_begin.html -%} String query = "SELECT * FROM accounts WHERE custID='" + request.getParameter("id") + "'"; {%- include code_red_end.html %}
<br>
<br>
<b>Szenario 2:</b> Auch das blinde Vertrauen in Frameworks kann zu Querys führen, die ganz analog zu obigem Beispiel verwundbar sind (z.B. Hibernate Query Language (HQL)):<br>
    {% include code_red_begin.html -%} Query HQLQuery = session.createQuery("FROM accounts WHERE custID='" + request.getParameter("id") + "'"); {%- include code_red_end.html %}
 
In beiden Fällen kann ein Angreifer den ‘id’-Parameter in seinem Browser ändern und sendet: <b>' or '1'='1</b>. Zum Beispiel so:<br>
    {% include code_red_begin.html -%} http://example.com/app/accountView?id=' or '1'='1 {%- include code_red_end.html %}
<br>
Hierdurch wird die Logik der Anfrage verändert, so dass alle Datensätze der Tabelle „accounts“ ohne Einschränkung auf einen Kunden zurückgegeben werden.<br>
Gefährlichere Attacken wären z.B. das Ändern oder Löschen von Daten oder das Aufrufen von Stored Procedures.

{%- include t10_subsection.html token="references" pos="right" -%}
**OWASP**<br>
* [OWASP Proactive Controls: Secure Database Access](/www-project-proactive-controls/v3/en/c3-secure-database)<br>
* [OWASP ASVS: V5 Input Validation and Encoding](/www-project-application-security-verification-standard)<br>
* [OWASP Testing Guide: SQL Injection](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/07-Input_Validation_Testing/05-Testing_for_SQL_Injection), [Command Injection](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/07-Input_Validation_Testing/12-Testing_for_Command_Injection) und [ORM Injection](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/07-Input_Validation_Testing/05.7-Testing_for_ORM_Injection)<br>
* [OWASP Cheat Sheet: Injection Prevention](https://cheatsheetseries.owasp.org/cheatsheets/Injection_Prevention_Cheat_Sheet.html)<br>
* [OWASP Cheat Sheet: SQL Injection Prevention](https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html)<br>
* [OWASP Cheat Sheet: Injection Prevention in Java](https://cheatsheetseries.owasp.org/cheatsheets/Injection_Prevention_Cheat_Sheet_in_Java.html)<br>
* [OWASP Cheat Sheet: Query Parameterization](https://cheatsheetseries.owasp.org/cheatsheets/Query_Parameterization_Cheat_Sheet.html)<br>
* [OWASP Automated Threats to Web Applications – OAT-014](/www-project-automated-threats-to-web-applications/)<br>
<br>
**Andere**<br>
* [CWE-77: Command Injection](https://cwe.mitre.org/data/definitions/77.html)<br>
* [CWE-89: SQL Injection](https://cwe.mitre.org/data/definitions/89.html)<br>
* [CWE-564: Hibernate Injection](https://cwe.mitre.org/data/definitions/564.html)<br>
* [CWE-917: Expression Language Injection](https://cwe.mitre.org/data/definitions/917.html)<br>
* [PortSwigger: Server-side template injection](https://portswigger.net/kb/issues/00101080_serversidetemplateinjection)
{%- include t10_subsection_end.html -%}
