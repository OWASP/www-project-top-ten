---

document: OWASP Top Ten 2017 (de)
year: 2017
order: 9
en: A3_2017-Sensitive_Data_Exposure
title: A3:2017-Verlust der Vertraulichkeit sensibler Daten
lang: de
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017 (de), Top Ten, A3:2017, de
exploitability: 2
prevalence: 3
detectability: 2
technical: 3
redirect_from:
  - 2017/de/A3_2017-Sensitive_Data_Exposure

---

{% include risk_begin.html %}
{%- include risk_description.html pos="firstLeft" -%}
<!--- Threat Agent: --->
Angreifer brechen i.d.R. nicht die Verschlüsselung selbst. Stattdessen stehlen sie Schlüssel, führen manuell Seiten- oder MITM-Angriffe aus bzw. stehlen Klartext vom Server, während der Übertragung oder aus dem Browser des Benutzers. Bereits zuvor entwendete Passwort-Datenbanken können mithilfe von Grafikkarten per Brute-Force aufgebrochen werden.
{%- include risk_description.html pos="mid" -%}
<!--- Security Weakness: --->
 In den letzten Jahren war dies die Angriffsart, die am häufigsten wirksam war. Fehlende Verschlüsselung vertraulicher Daten ist hierbei die häufigste Schwachstelle. Das Nutzen von Kryptographie erfolgt oft mit schwacher Schlüsselerzeugung und -verwaltung und der Nutzung schwacher Algorithmen, Protokolle und Verfahren (Cipher) insbesondere für Passwort-Hashes. Server-Schwachstellen bei der Transport-verschlüsselung können einfach erkannt werden, hingegen ist dies für gespeicherte Daten schwierig.
{%- include risk_description.html pos="right" -%}
<!--- Impacts: --->
 Fehler kompromittieren regelmäßig alle vertraulichen Daten. Es handelt sich hierbei oft auch um sensible personenbezogene Daten wie Patienten-, Personal-, Login-Daten oder Kreditkarteninformationen, die aufgrund gesetzlicher oder regulatorischen Vorgaben zu schützen sind, wie z.B. die DSGVO der EU oder nationale Datenschutz-Gesetze.
{%- include risk_end.html -%}

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html token="isTheApplicationVulnerable" pos="firstLeft" -%}
Zunächst müssen Sie den Schutzbedarf der übertragenen und der gespeicherten Daten bestimmen. Beispielsweise benötigen Passwörter, Kreditkartendaten, Patientendaten, Personaldaten und Geschäftsgeheimnisse einen erhöhten Schutz, insbeson-dere wenn dies in Datenschutzgesetzen, wie z.B. der Daten-schutz-Grundverordnung (DSGVO) der EU oder regulatorisch, wie z.B. im Finanzwesen dem PCI Data Security Standard (PCI DSS), gefordert wird.
Folgendes ist zu klären:<br>
* Werden Daten in Klartext übertragen? Dies betrifft insbesondere Protokolle wie z.B. HTTP, SMTP oder FTP. Das Internet ist hier besonders gefährlich. Überprüfen Sie auch interne Übertragungen, z.B. zwischen Load-Balancern, Web-Servern und Backend-Systemen. <br>
* Werden sensible Daten im Klartext gespeichert, inkl. Backups?<br>
* Werden veraltete oder schwache Kryptoverfahren genutzt, z.B. per Default-Einstellung oder veraltetem Code?<br>
* Werden vordefinierte, schwache oder alte Schlüssel zur Verschlüsselung benutzt oder gibt es kein ordnungsgemäßes Schlüsselmanagement inkl. Schlüsselwechsel?<br>
* Wird die Verschlüsselung nicht verbindlich erzwungen, z.B. fehlen Vorgaben für den Browser z.B. im HTTP-Header.<br>
* Prüft der Client (z.B. APP, Mail-Prg) Serverzertifikate richtig? <br>

Vgl. auch ASVS [Crypto (V7), Data Protection (V9) und SSL/TLS (V10)](/www-project-application-security-verification-standard).

{%- include t10_subsection.html token="howToPrevent" pos="right" -%}
Für alle vertraulichen Daten sollten Sie zumindest:<br>
* Legen Sie den Schutzbedarf der verarbeiteten, gespeicherten und übertragenen Daten gemäß Klassen fest. Berücksichtigen Sie dabei auch Datenschutzgesetze, regulatorische und Geschäfts-Anforderungen.<br>
* Legen Sie Maßnahmen je Klasse fest.<br>
* Kein unnötiges Speichern vertraulicher Daten. Sofortiges Löschen nicht mehr benötigter Daten oder PCI-DSS-konformes Speichern von Ersatzwerten (Tokenisierung) oder gar gekürzten (trunkierten) Werten. Daten, die es nicht gibt, können auch nicht gestohlen werden.<br>
* Verschlüsseltes Speichern von sensitiven Daten.<br>
* Aktuelle, starke Algorithmen und Schlüssel (z.B. gemäß BSI [TR-02102](https://www.bsi.bund.de/DE/Publikationen/TechnischeRichtlinien/tr02102/index_htm.html)) u. wirksames Schlüsselmanagement verwenden.<br>
* Nutzen von Transportverschlüsselung mit sicheren Protokollen, wie z.B. TLS mit priorisierten Ciphern, die ausschließlich Perfect Forward Secrecy (PFS) und sichere Parameter nutzen. Konfigurieren von Anweisungen wie z.B. HTTP Strict Transport Security ([HSTS](https://cheatsheetseries.owasp.org/cheatsheets/HTTP_Strict_Transport_Security_Cheat_Sheet.html)) zum obligatorischen Verschlüsseln.<br>
Deaktivieren des Caches für den Empfang sensibler Daten.
* Passwörter mit einem speziellen, adaptiven Salting-Hash-Algorithmus mit hohem Rechenaufwand (=Verzögerung) speichern ([Argon2](https://www.cryptolux.org/index.php/Argon2), [scrypt](https://wikipedia.org/wiki/Scrypt), [bcrypt](https://wikipedia.org/wiki/Bcrypt) oder [PBKDF2](https://wikipedia.org/wiki/PBKDF2)).<br>
* Unabhängige Überprüfung der Wirksamkeit der Einstellungen.

{%- include t10_subsection.html token="exampleAttackScenarios" pos="left" -%}
**Szenario 1:** Eine Anwendung verschlüsselt Kreditkartendaten automatisch bei der Speicherung in einer Datenbank. Das bedeutet aber auch, dass durch SQL-Injection erlangte Kreditkartendaten in diesem Fall automatisch entschlüsselt werden.<br>
<br>
**Szenario 2:** Eine Webseite benutzt kein TLS, erzwingt dies nicht auf allen Seiten oder lässt schwache Verschlüsselung zu. Der Angreifer liest die Kommunikation mit (z.B. in einem offenen WLAN), ersetzt HTTPS- durch HTTP-Verbindungen, hört diese ab und stiehlt das Sitzungscookie. Durch Wiedereinspielen dieses Cookies übernimmt der Angreifer die (authentifizierte) Sitzung des Nutzers und erlangt Zugriff auf dessen private Daten. Anstatt dessen kann der Angreifer auch die übertragenen Daten ändern, z.B. den Empfänger einer Überweisung.<br>
<br>
**Szenario 3:** Die Passwortdatenbank benutzt einfache Hashwerte oder Hashes ohne Salt zur Speicherung der Passwörter. Eine Schwachstelle in der Downloadfunktion erlaubt dem Angreifer den Zugriff auf die Passwortdatei. Zu Hashes ohne Salt kann über vorausberechnete Rainbow-Tabellen der Klartext gefunden werden. Hashes, die über einfache oder schnelle Funktionen be-rechnet wurden, können mittels Grafikkarte gebrochen werden.

{%- include t10_subsection.html token="references" pos="right" -%}
**OWASP**<br>
* [OWASP Proactive Controls: Protect Data Everywhere](/www-project-proactive-controls/v3/en/c8-protect-data-everywhere)<br>
* [OWASP Application Security Verification Standard (V7, 9, 10)](/www-project-application-security-verification-standard)<br>
* [OWASP Cheat Sheet: Transport Layer Protection](https://cheatsheetseries.owasp.org/cheatsheets/Transport_Layer_Protection_Cheat_Sheet.html)<br>
* [OWASP Cheat Sheet: User Privacy Protection](https://cheatsheetseries.owasp.org/cheatsheets/User_Privacy_Protection_Cheat_Sheet.html)<br>
* [OWASP Cheat Sheet: Password and Cryptographic Storage](https://cheatsheetseries.owasp.org/cheatsheets/Password_Storage_Cheat_Sheet.html)<br>
* [OWASP Cheat Sheet: HSTS](https://cheatsheetseries.owasp.org/cheatsheets/HTTP_Strict_Transport_Security_Cheat_Sheet.html)<br>
* [OWASP Testing Guide: Testing for weak cryptography](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/09-Testing_for_Weak_Cryptography/README)<br>
<br>
**Andere**<br>
* [CWE-202: Exposure of sens. information through data queries](https://cwe.mitre.org/data/definitions/202.html)<br>
* [CWE-310: Cryptographic Issues](https://cwe.mitre.org/data/definitions/310.html)<br>
* [CWE-311: Missing Encryption](https://cwe.mitre.org/data/definitions/311.html)<br>
* [CWE-312: Cleartext Storage of Sensitive Information](https://cwe.mitre.org/data/definitions/312.html)<br>
* [CWE-319: Cleartext Transmission of Sensitive Information](https://cwe.mitre.org/data/definitions/319.html)<br>
* [CWE-326: Weak Encryption](https://cwe.mitre.org/data/definitions/326.html)<br>
* [CWE-327: Broken/Risky Crypto](https://cwe.mitre.org/data/definitions/327.html)<br>
* [CWE-359: Exposure of Private Information (Privacy Violation)](https://cwe.mitre.org/data/definitions/359.html)<br>
* [BSI TR-02102 Kryptographische Verfahren: Empfehlungen und Schlüssellängen](https://www.bsi.bund.de/DE/Publikationen/TechnischeRichtlinien/tr02102/index_htm.html)<br>
{%- include t10_subsection_end.html -%}
