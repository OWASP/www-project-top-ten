---

document: OWASP Top Ten 2017 (de)
year: 2017
order: 19
en: What%27s_Next_for_Organizations
title: Nächste Schritte für Organisationen
lang: de
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017 (de), Top Ten, de
redirect_from:
  - 2017/de/What%2527s_Next_for_Organizations

---

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html pos="firstWhole" text="Starten Sie jetzt Ihre Offensive zur Anwendungssicherheit!" -%}
Anwendungssicherheit ist nicht mehr länger optional. Organisationen müssen leistungsfähige Prozesse und Ressourcen zur Absicherung ihrer Anwendungen und APIs schaffen, um im Umfeld einer steigenden Zahl von Angriffen einerseits und regulatorischen Vorschriften andererseits bestehen zu können. Auf Grund der atemberaubenden Mengen an Code in zahlreichen Anwendungen und APIs haben viele Organisationen Probleme, mit dem enormen Umfang an Sicherheitslücken zurecht zu kommen. OWASP empfiehlt den Aufbau eines Programms zur Anwendungssicherheit, um einen Überblick über die Sicherheitslage ihrer Anwendungen und APIs zu erhalten und diese zu verbessern. Um das Sicherheitsniveau zu erhöhen, müssen viele Unternehmensbereiche effizient zusammenarbeiten, von Security und Audit über die Entwicklungsabteilung und das Business bis hin zum Management. Die Sicherheitsarchitektur muss transparent und messbar sein, damit alle Beteiligten die Ziele der Anwendungssicherheit im Unternehmen nachvollziehen zu können. Konzentrieren Sie sich auf die Aktivitäten und Resultate, die tatsächlich zur Unternehmenssicherheit beitragen, indem Sie Risiken eliminieren oder reduzieren.  [OWASP SAMM](/www-project-samm) und der [OWASP Application Security Guide for CISOs (altes Wiki)](https://wiki.owasp.org/index.php/Application_Security_Guide_For_CISOs) sind die Quellen für die meisten der Schlüsselaktivitäten in dieser Liste.
<br>
<br>
{% include t10_subsection_inner_round_box.html
   topic='**Start:**'
   description='
       * Dokumentieren Sie alle Anwendungen und die zugehörigen Datenbestände. Größere Organisationen sollten die Einführung einer Configuration Management Database (CMDB) in Betracht ziehen.<br>* Führen Sie einen [Anwendungssicherheits-Leitfaden](https://owaspsamm.org/model/governance/policy-and-compliance/) ein und fördern Sie dessen Akzeptanz.<br>* Führen Sie eine [Gap-Analyse der Fähigkeiten Ihrer Organisation zu vergleichbaren Organisationen](https://owaspsamm.org/model/governance/strategy-and-metrics/) durch, um wichtige Verbesserungsfelder und einen Maßnahmenplan festzulegen.<br>* Führen Sie mit Zustimmung der Geschäftsleitung eine [Kampagne zur Sensibilisierung für Fragen der Anwendungssicherheit](https://owaspsamm.org/model/governance/education-and-guidance/) für Ihre gesamte IT-Organisation durch.'
%}
{% include t10_subsection_inner_round_box.html
   topic='**Risiko-basierter Ansatz:**'
   description='
       * Identifizieren Sie den [Schutzbedarf Ihrer Anwendungen](https://owaspsamm.org/model/governance/strategy-and-metrics/) aus geschäftlicher Sicht. Das sollte zum Teil durch Datenschutzgesetze und andere Vorschriften motiviert sein, die für die zu schützenden Datenbestände gelten. <br>* Erstellen Sie ein [Risikobewertungsmodell](/www-community/OWASP_Risk_Rating_Methodology) mit einem einheitlichen System von Wahrscheinlichkeiten und Auswirkungen, welches die Bereitschaft Ihrer Organisation berücksichtigt, Risiken einzugehen.<br>* Messen und priorisieren Sie dementsprechend alle Ihre Anwendungen und APIs. Fügen Sie die Ergebnisse in Ihre CMDB ein.<br>* Legen Sie Prüfungsrichtlinien fest, um einen angemessenen Abdeckungsgrad und den geforderten Reifegrad festzulegen.'
%}
{% include t10_subsection_inner_round_box.html
   topic='**Sorgen Sie für eine stabile Grundlage:**'
   description='
       * Erstellen Sie [Richtlinien und Standards](https://owaspsamm.org/model/governance/policy-and-compliance/) für Anwendungssicherheit, die als Basis für alle betroffenen Entwicklungsteams dienen.<br> * Definieren Sie einen [allgemeingültigen Basissatz wiederverwendbarer Sicherheitsmaßnahmen](/www-project-security-knowledge-framework), die diese Richtlinien und Standards ergänzen und stellen Sie Nutzungshinweise für Design und Entwicklung bereit.<br>* Etablieren Sie einen [Trainings-Plan für Anwendungssicherheit](https://owaspsamm.org/model/governance/education-and-guidance/) das sich an den verschiedenen Entwicklungsaufgaben und Themenkomplexen orientiert.'
%}
{% include t10_subsection_inner_round_box.html
   topic='**Integrieren Sie Sicherheit in Ihre bestehenden Prozesse:**'
   description='
       * Legen Sie Ihre Aktivitäten bzgl. [sicherer Implementierung](https://owaspsamm.org/model/implementation/) und [Verifikation](https://owaspsamm.org/model/verification/) fest und integrieren Sie diese in existierende Entwicklungs- und Anwendungsprozesse. Diese umfassen die [Modellierung der Bedrohungen](https://owaspsamm.org/model/design/threat-assessment/), sicheres Design und [Design-Review](https://owaspsamm.org/model/design/security-architecture/), sichere Programmierung und [Code-Review](https://owaspsamm.org/model/implementation/secure-build/), [Penetrationstests](https://owaspsamm.org/model/verification/security-testing/)und [Mängelbeseitigung](https://owaspsamm.org/model/implementation/defect-management/).<br>* Stellen Sie Experten und [unterstützende Dienste bereit, die die Entwickler und die Projektteams](https://owaspsamm.org/model/governance/education-and-guidance/) bei der erfolgreichen Umsetzung unterstützen.'
%}
{% include t10_subsection_inner_round_box.html
   topic='**Sorgen Sie für Sichtbarkeit beim Management:**'
   description='
       * Arbeiten Sie mit Metriken. Treiben Sie Verbesserungs- und Budget-Entscheidungen voran, die auf diesen Metriken und Analysedaten beruhen. Solche Metriken umfassen die Beachtung von Sicherheitspraktiken und -aktivitäten, neue oder entschärfte Sicherheitslücken, erfasste Anwendungen, Fehlerdichte nach Art und Anzahl etc.<br> * Analysieren Sie Ihre Implementierungs- und Prüfungsaktivitäten hinsichtlich der Hauptursachen und Muster für Sicherheitslücken. Treiben Sie so strategische und systemische Verbesserungen in Ihrer Organisation voran. Lernen Sie aus Fehlern und setzen Sie positive Anreize um Verbesserungen zu fördern.'
%}
{%- include t10_subsection_end.html -%}
