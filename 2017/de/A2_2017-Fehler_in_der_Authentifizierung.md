---

document: OWASP Top Ten 2017 (de)
year: 2017
order: 8
en: A2_2017-Broken_Authentication
title: A2:2017-Fehler in der Authentifizierung
lang: de
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017 (de), Top Ten, A2:2017, de
exploitability: 3
prevalence: 2
detectability: 2
technical: 3
redirect_from:
  - 2017/de/A2_2017-Broken_Authentication

---

{% include risk_begin.html %}
{%- include risk_description.html pos="firstLeft" -%}
<!--- Threat Agent: --->
Angreifer haben Zugriff auf Millionen gültiger Benutzerdatensätze um diese als Prüfgrundlage zu nutzen, Listen mit administrativen Standard-zugängen, Werkzeuge zum Durchführen von Bruteforce- und Wörterbuch-Angriffen. Angriffe auf die Authentifizierung sind gut erforscht, insbesondere in Bezug auf nicht erloschene Session-Token. {%- include risk_description.html pos="mid" -%}
<!--- Security Weakness: --->
 Aufgrund des Designs und der Implementierung von Identitäts- und Zugriffsprüfungen sind Fehler in der Authentifizierung weit verbreitet. Sitzungsverwaltung („Session Management“) ist die Grundlage zur Prüfung von Authentisierung und Zugriffsberechtigung und in zustandsbehafteten Anwendungen vorhanden.<br>Angreifer können fehlerhafte Authentifizierung mit manuellen Methoden erkennen und mithilfe automatisierter Tools mit Passwortlisten und Wörterbuchangriffen ausnutzen.
{%- include risk_description.html pos="right" -%}
<!--- Impacts: --->
 Um ein System zu kompromittieren, genügt es einem Angreifer, nur wenige Zugänge oder den einen administrativen Zugang zu erlangen. Abhängig vom Zweck der Anwendung ermöglicht ihm das z. B. Geldwäsche, Sozialbetrug, Identitätsdiebstahl oder die Veröffentlichung hochsensibler Informationen.
{%- include risk_end.html -%}

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html token="isTheApplicationVulnerable" pos="firstLeft" -%}
Um eine Anwendung gegen Angriffe auf die Authentisierung zu schützen, müssen die Nutzeridentität, Anmeldung und die Sitzungsverwaltung überprüft werden.<br>
Folgende Fehler in der Authentisierung können vorhanden sein:<br>
* Automatisierte Angriffe wie "[Credential Stuffing](/www-community/attacks/Credential_stuffing)" werden ermöglicht.<br>
* Bruteforce oder andere automatisierte Angriffe sind möglich.<br>
* Schwache oder bekannte Passwörter wie "Passwort!" oder "admin/admin" sind erlaubt, Standardpasswörter unverändert.<br>
* Funktionen um Zugangsdaten oder Passwörter wiederherzustellen sind schwach, wie z. B. "wissensbasierte Antworten", die nicht sicher sein können.<br>
* Speicherung von Passwörtern im Klartext, verschlüsselt oder mit schwachen Hashes (vgl. [A3:2017-Verlust der Vertraulichkeit sensibler Daten](A3_2017-Verlust_der_Vertraulichkeit_sensibler_Daten)).<br>
* Keine oder nicht wirksame Mehrfaktor-Authentisierung<br>
Die Sitzungs-ID wird im URL exponiert (z. B. URL rewriting)<br>
* Kein Wechsel der Sitzungs-ID nach einer erfolgreichen Anmeldung.<br>
* Sitzungs-IDs werden nicht korrekt ungültig gemacht, d.h. Benutzersitzungen oder Authentisierungs-Token (wie z.B. Single-Sign-On (SSO)-Token) werden nach einer Abmeldung, nach einer festen Zeit oder bei Nicht-Aktivität nicht explizit ungültig gemacht.

{%- include t10_subsection.html token="howToPrevent" pos="right" -%}
* Sofern es möglich ist, implementieren Sie Mehrfaktor-Authentisierung, um automatisierte Angriffe zu verhindern.<br>
* Im Auslieferungszustand sollten keine Standardbenutzer angelegt sein. Dies gilt besonders für administrative Benutzer.<br>
* Es sollten Prüfungen zum Verhindern schwacher Passwörter implementiert sein. So können Passwörtern gegen eine Liste [der 10000 beliebtesten Passwörter](https://github.com/danielmiessler/SecLists/tree/master/Passwords) geprüft werden.<br>
* Die Prüfung der Länge, Komplexität und Häufigkeit des Passwortwechsels sollte sich an den Vorgaben der [NIST 800-63](https://pages.nist.gov/800-63-3/sp800-63b.html#memsecret) o. anderen Vorgaben mit nachweisbarer Sicherheit orientieren.<br>
* Funktionen zur Benutzerregistrierung, Wiederherstellung von Zugangsdaten und API Zugängen sollten gegen das automatische Durchsuchen nach gültigen Benutzernamen geschützt sein, in dem bei allen fehlerhaften Anmeldeversuchen dieselbe Fehlermeldung ausgegeben wird.<br>
* Begrenzen Sie die Gesamtanzahl der Anmeldeversuche oder setzen Sie Verzögerungen ein. Fehlerhafte Anmeldungen müssen protokolliert und Administratoren informiert werden, wenn Anomalien oder Angriffe erkannt werden.<br>
* Es sollten serverseitige, sichere und etablierte Sitzungsmanager verwendet werden, die eine zufällig vergebene Sitzungs-ID mit hoher Entropie verwenden. Sitzungs-IDs sollten nicht in der URL stehen, sicher gespeichert und nach Abmeldung, Inaktivität oder einer gewissen Zeitenspanne entwertet werden.

{%- include t10_subsection.html token="exampleAttackScenarios" pos="left" -%}
**Szenario 1:** [Credential Stuffing](/www-community/attacks/Credential_stuffing) oder die Verwendung  [von Passwortlisten](https://github.com/danielmiessler/SecLists) sind übliche Angriffe. Sofern eine Anwendung keine automatisierte Erkennung von „Credential Stuffing“ implementiert, können gültige Benutzerdaten durchprobiert und auf Gültigkeit geprüft werden.<br>
<br>
**Szenario 2:** Die meisten Angriffe sind erfolgreich, weil weiterhin auf passwortbasierte Verfahren als einzigen Faktor gesetzt wird. Ehemals als Best-Practice anerkannte Verfahren wie Passwortwechsel und Komplexitätsanforderungen führen nur dazu, dass Benutzer Passwörter wiederverwenden und schwache Passwörter vergeben. Organisationen sind aufgefordert, diese Vorgehensweise entsprechend NIST 800-53 zu verhindern und Mehrfaktor-Authentisierung zu benutzen.<br>
<br>
**Szenario 3:** Die automatische Abmeldung bei Inaktivität ist nicht korrekt implementiert. Ein Nutzer verwendet einen öffentlichen Computer, um auf die Anwendung zuzugreifen. Anstatt die Abmeldefunktion zu nutzen, schließt der Benutzer lediglich den Browsertab. Eine Stunde später nutzt ein Angreifer denselben Browser und stellt fest, dass der Nutzer immer noch angemeldet ist.

{%- include t10_subsection.html token="references" pos="right" -%}
**OWASP**<br>
* [OWASP Proactive Controls: Implement Digital Identity](/www-project-proactive-controls/v3/en/c6-digital-identity)<br>
* [OWASP Application Security Verification Standard: V2 Authentication](/www-project-application-security-verification-standard)<br>
* [OWASP Application Security Verification Standard: V3 Session Management](/www-project-application-security-verification-standard)<br>
* [OWASP Testing Guide: Identity](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/03-Identity_Management_Testing/README), [Authentication](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/04-Authentication_Testing/README)<br>
* [OWASP Cheat Sheet: Authentication](https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html)<br>
* [OWASP Cheat Sheet: Credential Stuffing](https://cheatsheetseries.owasp.org/cheatsheets/Credential_Stuffing_Prevention_Cheat_Sheet.html)<br>
* [OWASP Cheat Sheet: Forgot Password](https://cheatsheetseries.owasp.org/cheatsheets/Forgot_Password_Cheat_Sheet.html)<br>
* [OWASP Cheat Sheet: Session Management](https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html)<br>
* [OWASP Automated Threats Handbook](/www-project-automated-threats-to-web-applications/)<br>
<br>
**Andere**<br>
* [NIST 800-63b: 5.1.1 Memorized Secrets](https://pages.nist.gov/800-63-3/sp800-63b.html#memsecret)<br>
* [CWE-287: Improper Authentication](https://cwe.mitre.org/data/definitions/287.html)<br>
* [CWE-384: Session Fixation](https://cwe.mitre.org/data/definitions/384.html)
{%- include t10_subsection_end.html -%}
