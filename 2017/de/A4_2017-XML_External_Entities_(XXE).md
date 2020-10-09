---

document: OWASP Top Ten 2017 (de)
year: 2017
order: 10
en: A4_2017-XML_External_Entities_(XXE)
title: A4:2017-XML External Entities (XXE)
lang: de
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017 (de), Top Ten, A4:2017, de
exploitability: 2
prevalence: 2
detectability: 3
technical: 3

---

{% include risk_begin.html %}
{%- include risk_description.html pos="firstLeft" -%}
<!--- Threat Agent: --->
Angreifer können anfällige XML Verarbeiter instrumentalisieren, wenn sie XML direkt hochladen können oder schädliche Inhalte in ein XML-Dokument aufnehmen können, wobei sie anfälligen Code, Abhängigkeiten oder Integrationen ausnutzen.
{%- include risk_description.html pos="mid" -%}
<!--- Security Weakness: --->
Standardmäßig erlauben viele ältere XML-Prozessoren die Spezifikation einer externen Entität, also einer URI, die während der XML-Verarbeitung dereferenziert und ausgewertet wird. [SAST](/www-community/Source_Code_Analysis_Tools)-Tools  können dies erkennen, indem sie Abhängigkeiten und Konfigura-tionen überprüfen. [DAST](/www-community/Vulnerability_Scanning_Tools)-Tools  erfordern zusätzliche manuelle Schritte, um dieses Problem zu erkennen und auszunutzen. Manuelle Tester müssen geschult werden, wie man auf XXE testet, was Stand 2017 typischerweise selten passiert.
{%- include risk_description.html pos="right" -%}
<!--- Impacts: --->
Diese Fehler können ausgenutzt werden, um Daten zu extrahieren, eine Remote-Anfrage vom Server auszuführen, interne Systeme zu scannen, einen Denial-of-Service-Angriff oder auch andere Angriffe durchzuführen.<br>Die Auswirkungen auf das Unternehmen hängen vom Schutzbedarf der Anwendung und ihrer Daten ab.
{%- include risk_end.html -%}

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html token="isTheApplicationVulnerable" pos="firstLeft" -%}
Anwendungen und insbesondere XML-basierte Webservices oder nachgelagerte Integrationen können in folgenden Fällen anfällig für Angriffe sein:<br>
* Die Anwendung akzeptiert direkt XML oder XML-Uploads, insbesondere aus nicht vertrauenswürdigen Quellen oder fügt nicht vertrauenswürdige Daten in XML-Dokumente ein, die dann von einem XML-Prozessor analysiert werden.<br>
* Die XML-Prozessoren in der Anwendung oder SOAP-basierte Webservices haben [Document Type Definitions (DTDs)](https://en.wikipedia.org/wiki/Document_type_definition) aktiviert. Da der genaue Mechanismus zum Deaktivieren der DTD-Verarbeitung je nach Prozessor variiert, ist es empfehlenswert, eine Referenz wie den [OWASP Cheat Sheet 'XXE Prevention'](https://cheatsheetseries.owasp.org/cheatsheets/XML_External_Entity_Prevention_Cheat_Sheet.html).<br>
* Wenn Ihre Anwendung SAML für die Identitätsverarbeitung im Rahmen von föderierter Sicherheit oder für Single Sign On (SSO) Zwecke verwendet. SAML verwendet XML für Identitätsbekundungen und kann daher anfällig sein.<br>
* Wenn die Anwendung SOAP vor Version 1.2 verwendet, ist sie wahrscheinlich anfällig für XXE-Angriffe, wenn XML-Entitäten an das SOAP-Framework übergeben werden.<br>
* Die Anfälligkeit für XXE-Angriffe bedeutet wahrscheinlich, dass die Anwendung anfällig für Denial-of-Service-Angriffe, einschließlich des sogenannten "Billion Laughs" Angriffs, ist.

{%- include t10_subsection.html token="howToPrevent" pos="right" -%}
Die Schulung von Entwicklern ist unerlässlich, um XXE zu identifizieren und zu beheben. Zusätzlich:<br>
* Verwenden Sie möglichst weniger komplexe Datenformate, wie JSON und vermeiden Sie die Serialisierung sensibler Daten.<br>
* Patchen oder aktualisieren Sie alle XML-Prozessoren und Bibliotheken, die von der Anwendung oder dem zugrunde liegenden Betriebssystem verwendet werden. Verwenden Sie Werkzeuge zur Prüfung von Abhängigkeiten. Aktualisieren Sie auf SOAP 1.2 oder höher.<br>
* Deaktivieren Sie die Verarbeitung von externen XML-Entitäten und DTDs in allen XML-Parsern in der Anwendung, gemäß dem [OWASP Cheat Sheet 'XXE Prevention'](https://www.owasp.org/index.php/XML_External_Entity_(XXE)_Prevention_Cheat_Sheet). Implementierung einer positiven serverseitigen Eingabevalidierung ("White-listing"), -filterung oder -bereinigung, um bösartige Daten in XML-Dokumenten, Headern oder Knoten zu verhindern.<br>
* Vergewissern Sie sich, dass die Upload-Funktionalität für XML- oder XSL-Dateien eingehende XML-Daten mithilfe der XSD-Validierung oder ähnlichem validiert.<br>
* [SAST](/www-community/Source_Code_Analysis_Tools)-Tools können helfen, XXE im Quellcode zu erkennen, jedoch ist die manuelle Codeüberprüfung die beste Alternative in großen, komplexen Anwendungen mit vielen Integrationen.<br>
* Wenn dies nicht möglich ist, sollten Sie die Verwendung von virtuellen Patches, API-Sicherheitsgateways oder Web Application Firewalls (WAFs) in Betracht ziehen, um XXE-Angriffe zu erkennen, zu überwachen und zu blockieren.<br>

{%- include t10_subsection.html token="exampleAttackScenarios" pos="left" -%}
Zahlreiche öffentliche XXE-Probleme wurden entdeckt, darunter auch Angriffe auf Embedded-Geräte. XXE tritt an vielen unerwarteten Stellen auf, einschließlich tief verschachtelter Abhängigkeiten. Der einfachste Weg, wenn möglich, ist das Hochladen einer bösartigen XML-Datei:<br>

**Szenario 1:** Der Angreifer versucht, Daten vom Server zu extrahieren:<br>

    {% include code_begin.html -%} &lt;?xml version="1.0" encoding="ISO-8859-1"?&gt; {%- include code_end.html %}
    {% include code_begin.html -%} <!DOCTYPE foo [     {%- include code_end.html %}
    {% include code_begin.html -%} <!ELEMENT foo ANY > {%- include code_end.html %}
    {% include code_red_begin.html -%} <!ENTITY xxe SYSTEM "file:///etc/passwd" >]> {%- include code_red_end.html %}
    {% include code_red_begin.html -%} &lt;foo&gt;&xxe;&lt;/foo&gt; {%- include code_red_end.html %}

<br>
**Szenario 2:** Ein Angreifer durchsucht das private Netzwerk des Servers, indem er die obige ENTITY-Zeile ändert zu:<br>

      {% include code_red_begin.html -%}<!ENTITY xxe SYSTEM "https://192.168.1.1/private" >]>{%- include code_red_end.html %}
<br>
**Szenario 3:** Ein Angreifer versucht einen Denial-of-Service-Angriff, indem er eine potenziell endlose Datei einfügt:<br>

    {% include code_red_begin.html -%}<!ENTITY xxe SYSTEM "file:///dev/random" >]>{%- include code_red_end.html %}

{%- include t10_subsection.html token="references" pos="right" -%}
**OWASP**<br>
* [OWASP Application Security Verification Standard](/www-project-application-security-verification-standard)<br>
* [OWASP Testing Guide: Testing for XML Injection](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/07-Input_Validation_Testing/07-Testing_for_XML_Injection)<br>
* [OWASP XXE Vulnerability](/www-community/vulnerabilities/XML_External_Entity_(XXE)_Processing)<br>
* [OWASP Cheat Sheet: XXE Prevention](https://cheatsheetseries.owasp.org/cheatsheets/XML_External_Entity_Prevention_Cheat_Sheet.html)<br>
* [OWASP Cheat Sheet: XML Security](https://cheatsheetseries.owasp.org/cheatsheets/XML_Security_Cheat_Sheet.html)<br>
<br>
**Andere**<br>
* [CWE-611: Improper Restriction of XXE](https://cwe.mitre.org/data/definitions/611.html)<br>
* Billion Laughs Attack [(ioactive)](https://ioactive.com/die-laughing-from-a-billion-laughs/), [(Wikipedia)](https://en.wikipedia.org/wiki/Billion_laughs_attack)<br>
* [SAML Security XML External Entity Attack](https://secretsofappsecurity.blogspot.tw/2017/01/saml-security-xml-external-entity-attack.html)<br>
* [Detecting and exploiting XXE in SAML Interfaces](https://web-in-security.blogspot.tw/2014/11/detecting-and-exploiting-xxe-in-saml.html)<br>
{%- include t10_subsection_end.html -%}