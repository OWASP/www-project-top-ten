---

document: OWASP Top Ten 2017 (de)
year: 2017
order: 16
en: A10_2017-Insufficient_Logging%26Monitoring
title: A10:2017-Unzureichendes Logging & Monitoring
lang: de
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017 (de), Top Ten, A10:2017, de
exploitability: 2
prevalence: 3
detectability: 1
technical: 2
redirect_from:
  - 2017/de/A10_2017-Insufficient_Logging%2526Monitoring

---

{% include risk_begin.html %}
{%- include risk_description.html pos="firstLeft" -%}
<!--- Threat Agent: --->
Das Ausnutzen unzureichender Protokollierungs- und Monitoring-Maßnahmen ist der Ausgangspunkt fast aller größerer Sicherheitsvorfälle.<br>Angreifer nutzen fehlendes Monitoring und verzögerte Antwortzeiten auf Vorfälle dazu aus, unentdeckt Angriffe durchzuführen.
{%- include risk_description.html pos="mid" -%}
<!--- Security Weakness: --->
Dieser Eintrag in den Top 10 basiert auf einer [Umfrage unter Sicherheitsexperten](https://owasp.blogspot.com/2017/08/owasp-top-10-2017-project-update.html).<br>Eine mögliche Strategie, um herauszufinden, ob Ihre Monitoring-Maßnahmen ausreichend sind, ist es, die Logging-Einträge Ihres Systems nach einem Penetrationstest zu überprüfen. Die Aktivitäten des Testers sollten so protokolliert worden sein, das Sie daraus mögliche Schäden identifizieren können.
{%- include risk_description.html pos="right" -%}
<!--- Impacts: --->
Den meisten erfolgreichen Angriffen gehen Schwachstellen-Scans voraus. Wenn solche Scans nicht abgewehrt werden, besteht ein fast 100 prozentiges Risiko für erfolgreiche Angriffe.<br>Die Zeit bis zur Aufdeckung eines Einbruchs lag 2016 [durchschnittlich bei 191 Tagen](https://www-01.ibm.com/common/ssi/cgi-bin/ssialias?htmlfid=SEL03130WWEN&) – viel Zeit, um Ihren Systemen Schaden zuzufügen.
{%- include risk_end.html -%}

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html token="isTheApplicationVulnerable" pos="firstLeft" -%}
Unzureichende Protokollierungs-, Erkennungs- und Monitoring-Maßnahmen sowie fehlende aktive Reaktionen auf Vorfälletreten ständig auf:<br>
* Auditierbare Ereignisse wie erfolgreiche oder fehlgeschlagene Log-ins oder wichtige Transaktionen werden nicht protokolliert.<br>
* Warnungen und Fehler erzeugen keine, unzureichende oder uneindeutige Protokoll-Einträge.<br>
* Protokolle von Anwendungen und Schnittstellen werden nicht ausreichend hinsichtlich verdächtiger Aktivitäten überprüft.<br>
* Protokolle werden nur lokal gespeichert.<br>
* Geeignete Alarmierungs-Schwellen und Eskalations-Prozesse als Reaktion auf (potentielle) Vorfälle liegen nicht vor oder sind nicht wirksam.<br>
* Penetration-Tests und Scans mit [DAST](/www-community/Vulnerability_Scanning_Tools)-Werkzeugen (wie [OWASP ZAP](/www-project-zap)) lösen keine Alarme aus.<br>
* Die eingesetzten Überwachungsverfahren sind nicht in der Lage aktive Angriffe zu erkennen und in Echtzeit oder nahezu Echtzeit Alarm auszulösen.<br>

Wenn Ihre Systeme Protokollierungs- und Alarmierungs-Nachrichten Benutzern oder Angreifern preisgeben, kann dies zum Abfluss von Daten führen (siehe [A3:2017-Verlust der Vertraulichkeit sensibler Daten](A3_2017-Verlust_der_Vertraulichkeit_sensibler_Daten)).

{%- include t10_subsection.html token="howToPrevent" pos="right" -%}
Führen Sie für alle von Anwendungen gespeicherten oder prozessierten Daten folgende Maßnahmen durch:<br>
* Stellen Sie sicher, dass alle erfolglosen Login- und Zugriffs-Versuche und Fehler bei der serverseitigen Eingabevalidierung mit aussagekräftigem Benutzerkontext protokolliert werden, um verdächtige oder schädliche Accounts zu identifizieren. Halten Sie diese Informationen ausreichend lange vor, um auch später forensische Analysen vorzunehmen zu können.<br>
* Stellen Sie sicher, dass Protokollierungen in einem Format erstellt werden, die eine einfache Verarbeitung durch zentrale Protokollanalyse- und -managementwerkzeuge ermöglicht.<br>
* Speichern Sie für wichtige Transaktionen Audit-Trails mit Integritätsschutz, um Verfälschung oder ein Löschen zu verhindern, z.B. durch Einsatz von Datenbanktabellen, die nur das Anhängen von Datensätzen zulassen.<br>
• Richten Sie wirksame Monitoring- und Alarmierungs-Verfahren ein, damit verdächtige Aktivitäten zeitnah entdeckt und bearbeitet werden.<br>
• Etablieren Sie Notfall- und Wiederherstellungspläne für Sicherheitsvorfälle, z.B. auf Basis von [NIST 800-61 rev 2](https://csrc.nist.gov/publications/detail/sp/800-61/rev-2/final).<br>

Es gibt kommerzielle o. Open-Source-Frameworks zum Schutz Ihrer Anwendungen, wie [OWASP AppSensor](/www-project-appsensor) ([old wiki](https://wiki.owasp.org/index.php/OWASP_AppSensor_Project)), WebApp Firewalls wie ModSecurity mit dem [OWASP ModSecurity Core Rule Set](/www-project-modsecurity-core-rule-set) und geeignete Protokollanalyse-Werkzeuge inkl. Alarmierung.

{%- include t10_subsection.html token="exampleAttackScenarios" pos="left" -%}
**Szenario 1**: Eine Open-Source Projektforums-Software, die von einem kleinen Team betrieben wird, wurde auf Grund eines Fehlers in der Software angegriffen. Die Angreifer konnten das interne Quellcode-Repository mit der nächsten Version und allen Inhalten löschen. Obwohl der Quellcode wiederhergestellt werden konnte, führte das Fehlen von Monitoring, Protokollierung und Warnmeldungen zu weit schwerwiegenderen Folgen. Als Konsequenz ist das Projektforum inzwischen nicht mehr aktiv.<br>
<br>
**Szenario 2**: Angreifer scannen nach Nutzern mit häufig benutzten, einfachen Passwörtern. Sie können alle betroffenen Accounts übernehmen. Für alle anderen Nutzer hinterlässt dieser Angriff nur 1 falschen Loginversuch. Nach einiger Zeit könnte der Angriff mit anderen Passwörtern wiederholt werden.<br>
<br>
**Szenario 3**: Ein großer US-Großhändler verfügte über eine Sandbox, die Mail-Anhänge auf Schadsoftware überprüfte.Die Sandbox entdeckte potenziell gefährliche Software, aber niemand reagierte auf diese Meldung. Der Sicherheitsvorfall wurde jedoch erst erkannt, als die Hausbank betrügerische Kreditkarten-Transaktionen meldete.

{%- include t10_subsection.html token="references" pos="right" -%}
**OWASP**<br>
* [OWASP Proactive Controls: Implement Logging and Monitoring](/www-project-proactive-controls/v3/en/c9-security-logging.html)<br>
* [OWASP Application Security Verification Standard:](/www-project-application-security-verification-standard) V8 Logging and Monitoring<br>
* [OWASP Testing Guide: Testing for Detailed Error Code](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/08-Testing_for_Error_Handling/01-Testing_for_Error_Code)<br>
* [OWASP Cheat Sheet: Logging](https://cheatsheetseries.owasp.org/cheatsheets/Logging_Cheat_Sheet.html)<br>
<br>
**Andere**<br>
* [CWE-223: Omission of Security-relevant Information](https://cwe.mitre.org/data/definitions/223.html)<br>
* [CWE-778: Insufficient Logging](https://cwe.mitre.org/data/definitions/778.html)
{% include t10_subsection_end.html %}