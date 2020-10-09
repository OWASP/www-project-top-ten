---

document: OWASP Top Ten 2017 (de)
year: 2017
order: 6
en: Top_10
title: 2017 Top 10
lang: de
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017 (de), Top Ten, de

---

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html pos="firstWhole" text="OWASP Top 10 Risiken für die Anwendungssicherheit – 2017" -%}
<br>

{% include t10_subsection_inner_round_box.html
   topic='**[A1:2017-Injection](A1_2017-Injection):**'
   description='
       Injection-Schwachstellen, wie beispielsweise SQL-, OS- oder LDAP-Injection, treten auf, wenn nicht vertrauenswürdige Daten von einem Interpreter als Teil eines Kommandos oder einer Abfrage verarbeitet werden. Ein Angreifer kann Eingabedaten dann so manipulieren, dass er nicht vorgesehene Kommandos ausführen oder unautorisiert auf Daten zugreifen kann.'
%}
{% include t10_subsection_inner_round_box.html
   topic='**[A2:2017-Fehler in der Authentifizierung](A2_2017-Fehler_in_der_Authentifizierung):**'
   description='
       Anwendungsfunktionen, die im Zusammenhang mit Authentifizierung und Session-Management stehen, werden häufig fehlerhaft implementiert. Dies erlaubt es Angreifern, Passwörter oder Session-Token zu kompromittieren oder die entsprechenden Schwachstellen so auszunutzen, dass sie die Identität anderer Benutzer vorübergehend oder dauerhaft annehmen können.'
%}
{% include t10_subsection_inner_round_box.html
   topic='**[A3:2017-Verlust der Vertraulichkeit sensibler Daten](A3_2017-Verlust_der_Vertraulichkeit_sensibler_Daten):**'
   description='
       Viele Anwendungen schützen sensible Daten, wie personenbezogene Informationen und Finanz- oder Gesundheitsdaten, nicht ausreichend. Angreifer können diese Daten auslesen oder modifizieren und mit ihnen weitere Straftaten begehen (Kreditkartenbetrug, Identitätsdiebstahl etc.). Vertrauliche Daten können kompromittiert werden, wenn sie nicht durch Maßnahmen, wie Verschlüsselung gespeicherter Daten und verschlüsselte Datenübertragung, zusätzlich geschützt werden. Besondere Vorsicht ist beim Datenaustausch mit Browsern angeraten.'
%}
{% include t10_subsection_inner_round_box.html
   topic='**[A4:2017-XML External Entities (XXE)](A4_2017-XML_External_Entities_(XXE)):**'
   description='
       Viele veraltete oder schlecht konfigurierte XML Prozessoren berücksichtigen Referenzen auf externe Entitäten innerhalb von XML-Dokumenten. Dadurch können solche externen Entitäten dazu eingesetzt werden, um mittels URI Datei-Handlern interne Dateien oder File-Shares offen-zulegen oder interne Port-Scans, Remote-Code-Executions oder Denial-of-Service Angriffe auszuführen.'
%}
{% include t10_subsection_inner_round_box.html
   topic='**[A5:2017-Fehler in der Zugriffskontrolle](A5_2017-Fehler_in_der_Zugriffskontrolle):**'
   description='
       Häufig werden die Zugriffsrechte für authentifizierte Nutzer nicht korrekt um- bzw. durchgesetzt. Angreifer können entsprechende Schwachstellen ausnutzen, um auf Funktionen oder Daten zuzugreifen, für die sie keine Zugriffsberechtigung haben. Dies kann Zugriffe auf Accounts anderer Nutzer sowie auf vertrauliche Daten oder aber die Manipulation von Nutzerdaten, Zugriffsrechten etc. zur Folge haben.'
%}
{% include t10_subsection_inner_round_box.html
   topic='**[A6:2017-Sicherheitsrelevante Fehlkonfiguration](A6_2017-Sicherheitsrelevante_Fehlkonfiguration):**'
   description='
       Fehlkonfigurationen von Sicherheitseinstellungen sind das am häufigsten auftretende Problem. Ursachen sind unsichere Standardkonfigurationen, unvollständige oder ad-hoc durchgeführte Konfigurationen, ungeschützte Cloud-Speicher, fehlkonfigurierte HTTP-Header und Fehleraus-gaben, die vertrauliche Daten enthalten. Betriebssysteme, Frameworks, Bibliotheken und Anwen-dungen müssen sicher konfiguriert werden und zeitnah Patches und Updates erhalten.'
%}
{% include t10_subsection_inner_round_box.html
   topic='**[A7:2017-Cross-Site Scripting (XSS)](A7_2017-Cross-Site_Scripting_(XSS)):**'
   description='
       XSS tritt auf, wenn Anwendungen nicht vertrauenswürdige Daten entgegennehmen und ohne Validierung oder Umkodierung an einen Webbrowser senden. XSS tritt auch auf, wenn eine Anwendung HTML- oder JavaScript-Code auf Basis von Nutzereingaben erzeugt. XSS erlaubt es einem Angreifer, Scriptcode im Browser eines Opfers auszuführen und so Benutzersitzungen zu übernehmen, Seiteninhalte verändert anzuzeigen oder den Benutzer auf bösartige Seiten umzuleiten.'
%}
{% include t10_subsection_inner_round_box.html
   topic='**[A8:2017-Unsichere Deserialisierung](A8_2017-Unsichere_Deserialisierung):**'
   description='
       Unsichere, weil unzureichend geprüfte Deserialisierungen können zu Remote-Code-Execution-Schwachstellen führen. Aber auch wenn das nicht der Fall ist, können Deserialisierungsfehler Angriffsmuster wie Replay-Angriffe, Injections und Erschleichung erweiterter Zugriffsrechte ermöglichen.'
%}
{% include t10_subsection_inner_round_box.html
   topic='**[A9:2017-Nutzung von Komponenten mit bekannten Schwachstellen](A9_2017-Nutzung_von_Komponenten_mit_bekannten_Schwachstellen):**'
   description='
       Komponenten wie Bibliotheken, Frameworks etc. werden mit den Berechtigungen der zugehöri-gen Anwendung ausgeführt. Wird eine verwundbare Komponente ausgenutzt, kann ein solcher Angriff von Datenverlusten bis hin zu einer Übernahme des Systems führen. Applikationen und APIs, die Komponenten mit bekannten Schwachstellen einsetzen, können Schutzmaßnahmen unterlaufen und so Angriffe mit schwerwiegenden Auswirkungen verursachen.'
%}
{% include t10_subsection_inner_round_box.html
   topic='**[A10:2017-Unzureichendes Logging &amp; Monitoring](A10_2017-Unzureichendes_Logging%2526Monitoring):**'
   description='
       Unzureichendes Logging und Monitoring führt zusammen mit fehlender oder uneffektiver Reaktion auf Vorfälle zu andauernden oder wiederholten Angriffen. Auch können Angreifer dadurch in Netzwerken weiter vordringen und Daten entwenden, verändern oder zerstören. Viele Studien zeigen, dass die Zeit bis zur Aufdeckung eines Angriffs bei ca. 200 Tagen liegt sowie typischer-weise durch Dritte entdeckt wird und nicht durch interne Überwachungs- und Kontrollmaßnahmen.'
%}
{%- include t10_subsection_end.html -%}
