---

document: OWASP Top Ten 2017 (de)
year: 2017
order: 14
en: A8_2017-Insecure_Deserialization
title: A8:2017-Unsichere Deserialisierung
lang: de
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017 (de), Top Ten, A8:2017, de
exploitability: 1
prevalence: 2
detectability: 2
technical: 3
redirect_from:
  - 2017/de/A8_2017-Insecure_Deserialization
  
---

{% include risk_begin.html %}
{%- include risk_description.html pos="firstLeft" -%}
<!--- Threat Agent: --->
Das Ausnutzen von Fehlern in der Deserialisierung ist nicht trivial, zumal vorhandener Angriffscode selten ohne weitere Anpassungen einsetzbar ist.
{%- include risk_description.html pos="mid" -%}
<!--- Security Weakness: --->
Dieser Eintrag in den Top 10 basiert auf einer [Expertenumfrage in der Community](https://owasp.blogspot.com/2017/08/owasp-top-10-2017-project-update.html) Dieser Eintrag in den Top 10 basiert auf einer Expertenumfrage in der Community und nicht auf messbaren Fallzahlen.<br>Einige Werkzeuge können Deserialisierungsschwachstellen entdecken, allerdings ist häufig eine manuelle Überprüfung des Fundes nötig. Es ist zu erwarten, dass belastbareres Zahlenmaterial zur Verfügung stehen wird, sobald die Tools zur Erkennung weiter entwickelt sind.
{%- include risk_description.html pos="right" -%}
<!--- Impacts: --->
Die Auswirkungen von Deserialisierungsfehlern sollten nicht unterschätzt werden. Diese Schwachstelle kann durchaus zu "Remote-Code Execution" führen, einem der schwerwiegendsten Angriffe überhaupt.<br>Die Auswirkungen auf das Unternehmen hängen vom Schutzbedarf der Anwendung und ihrer Daten ab.
{%- include risk_end.html -%}

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html token="isTheApplicationVulnerable" pos="firstLeft" -%}
Anwendungen oder APIs können verwundbar sein, wenn Sie bösartige oder vom Angreifer manipulierte Objekte deserialisieren.Dies kann zu zwei Hauptangriffsarten führen:<br>
* Angriffe mittels Objekt- und Datenstrukturen, die es Angreifern ermöglichen, die Anwendungslogik zu verändern oder Programmcode auszuführen. Dies ist möglich, sofern die Anwendung auf Klassen zugreifen kann (inkl. Standardklassen), deren Verhalten während oder nach der Deserialisierung manipuliert werden kann.<br>
* Übliche Angriffe mittels Datenmanipulation: dazu zählen Angriffe gegen die Zugriffskontrolle, wobei existierende Datenstrukturen genutzt und deren Inhalt manipuliert werden.<br>

Serialisierung wird häufig eingesetzt bei:<br>
* Remote- und Inter-Prozess Kommunikation (RPC/IPC)<br>
* Wire-Protokollen, Webservices, Message-Brokern<br>
* Caching/Persistenz<br>
* Datenbanken, Cache-Servern, Dateisystemen<br>
* HTTP-Cookies, HTML-Formular-Parameter oder API-Authentifizierungs-Token.

{%- include t10_subsection.html token="howToPrevent" pos="right" -%}
Der einzig sichere Weg ist es keine serialisierten Objekte aus nicht vertrauenswürdigen Quellen anzunehmen oder nur serialisierte Datenstrukturen zu nutzen, die ausschließlich einfache Datentypen erlauben.<br>
Andernfalls ziehen Sie folgende Empfehlungen in Betracht:<br>
* Versehen Sie alle serialisierten Objekte mit einer digitalen Signatur, um so zu verhindern, dass bösartige Objekte erzeugt oder Daten manipuliert werden können.<br>
* Achten Sie auf eine strikte Typisierung während der Deserialisierung und bevor Objekte erzeugt werden. Zumeist wird hier nur eine bekannte Menge an Klassen benötigt. Es wurde bereits gezeigt, das diese Maßnahme umgangen werden kann. Es ist daher nicht ratsam, sich alleine hierauf zu verlassen.<br>
* Isolieren Sie den für die Deserialiserung zuständigen Programmcode und führen Sie ihn in einer eigenen Umgebung mit möglichst geringen Berechtigungen aus.<br>
* Protokollieren Sie alle Ausnahmefehler, die bei der Deserialisierung auftreten (z.B. unerwartete Objekt-Typen).<br>
* Begrenzen oder überwachen Sie ein- und ausgehende Netzwerkaktivitäten von Containern oder Servern, die Deserialisierungen ausführen.
* Überwachen und melden Sie, wenn ein Nutzer auffällig häufig eine Deserialisierung nutzt.

{%- include t10_subsection.html token="exampleAttackScenarios" pos="left" -%}
**Szenario 1**: Eine React basierte Anwendung nutzt einige Spring Boot-Microservices. Die Programmierer dieser funktionalen Sprache haben darauf geachtet, dass ihr Programmcode „unveränderbar“ ist. Daher serialisieren Sie den Benutzerstatus und transferieren diesen so mit jeder Anfrage hin und her. Ein Angreifer entdeckt die „rO0“-Base64-Signatur des Java-Objekts und nutzt das Werkzeug Java Serial Killer, um Remote-Code-Execution auf dem Anwendungsserver auszuführen.<br>
<br>
**Szenario 2**: Ein PHP Forum nutzt die PHP-Objekt-Serialisierung um ein „Super-Cookie“ zu erzeugen, dieses enthält Angaben zur User-ID, Rolle, einen Passwort-Hash und weitere Informationen:<br>
    {% include code_red_begin.html -%} a:4:{i:0;i:132;i:1;s:7:"Mallory";i:2;s:4:"user"; {%- include code_red_end.html %}
    {% include code_red_begin.html -%} i:3;s:32:"b6a8b3bea87fe0e05022f8f3c88bc960";} {%- include code_red_end.html %}

Ein Angreifer verändert nun das serialisierte Objekt, um sich selbst Admin-Rechte zu verschaffen:<br>
    {% include code_red_begin.html -%} a:4:{i:0;i:1;i:1;s:5:"Alice";i:2;s:5:"admin"; {%- include code_red_end.html %}
    {% include code_red_begin.html -%} i:3;s:32:"b6a8b3bea87fe0e05022f8f3c88bc960";} {%- include code_red_end.html %}

{%- include t10_subsection.html token="references" pos="right" -%}
**OWASP**<br>
* [OWASP Cheat Sheet: Deserialization](https://cheatsheetseries.owasp.org/cheatsheets/Deserialization_Cheat_Sheet.html)<br>
* [OWASP Proactive Controls: Validate All Inputs](/www-project-proactive-controls/v3/en/c5-validate-inputs)<br>
* [OWASP Application Security Verification Standard](/www-project-application-security-verification-standard)<br>
* [OWASP AppSecEU 2016: Surviving the Java Deserialization Apocalypse](https://speakerdeck.com/pwntester/surviving-the-java-deserialization-apocalypse)<br>
* [OWASP AppSecUSA 2017: Friday the 13th JSON Attacks](https://speakerdeck.com/pwntester/friday-the-13th-json-attacks)<br>
<br>
**Andere**<br>
* [CWE-502: Deserialization of Untrusted Data](https://cwe.mitre.org/data/definitions/502.html)<br>
* [Java Unmarshaller Security](https://github.com/mbechler/marshalsec)<br>
* [OWASP AppSec Cali 2015: Marshalling Pickles](http://frohoff.github.io/appseccali-marshalling-pickles/)
{% include t10_subsection_end.html %}
