---

document: OWASP Top Ten 2017 (de)
year: 2017
order: 20
en: What%27s_Next_for_Application_Managers
title: Nächste Schritte für Anwendungs-Verantwortliche
lang: de
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017 (de), Top Ten, de
redirect_from:
  - 2017/de/What%2527s_Next_for_Application_Managers

---

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html pos="firstWhole" text="Regeln Sie den vollständigen Lebenszyklus von Anwendungen" -%}
Anwendungen gehören zu den komplexesten Systemen, die Menschen regelmäßig erschaffen und betreiben. Das IT-Management von Anwendungen sollte von IT-Spezialisten erfolgen, die für den vollständigen Lebenszyklus einer Anwendung verantwortlich sind. Wir empfehlen, die Rolle des Anwendungs-Verantwortlichen (Application Manager) als technisches Pendant zum Anwendungs-Eigentümer (Application Owner) zu etablieren. Der Anwendungs-Verantwortliche ist für den gesamten Lebenszyklus der Anwendung bezüglich der IT-Belange zuständig, von der Erhebung der fachlichen Anforderungen bis hin zur Außerbetriebnahme der Systeme. Letzteres wird häufig übersehen. 
<br>
<br>
{% include t10_subsection_inner_round_box.html
   topic='**Anforderungs- und Ressourcen-Management:**'
   description='
       * Fachliche Anforderungen mit dem Fachbereich aufnehmen und vereinbaren, inkl. dem Schutzbedarf aller Daten-Assets in Bezug auf Vertraulichkeit, Authentizität, Integrität und Verfügbarkeit, sowie der erwarteten Anwendungslogik.<br>
       * Zusammenstellen der technischen Anforderungen inkl. funktionalen und nicht-funktionalen Anforderungen an die Sicherheit.<br>
       * Planen und vereinbaren des Budgets, das alle Aspekte abdeckt, vom Design, Entwicklung, Testen bis hin zum Betrieb sowie die Sicherheitsmaßnahmen.'
%}
{% include t10_subsection_inner_round_box.html
   topic='**Ausschreibung und Vergabe:**'
   description='
       * Die Anforderungen mit internen oder externen Entwicklern vereinbaren, inkl. Richtlinien, Sicherheits-Vorgaben und -Prozesse, wie z.B. sicherer Softwareentwicklungsprozess (SDLC), Best Practices.<br>* Bewerten Sie den Erfüllungsgrad der technischen Anforderungen inkl. Planungs- und Design-Phase.<br>* Vereinbaren Sie alle technischen Anforderungen inkl. Design, Sicherheit und Service-Level-Agreements (SLAs).<br>* Nutzen Sie Vorlagen und Checklisten, z.B. den [OWASP Secure Software Contract Annex](/www-community/OWASP_Secure_Software_Contract_Annex) ([deutsch im alten Wiki](https://wiki.owasp.org/index.php/OWASP_Secure_Software_Contract_Annex_German)).<br>**Hinweis:** Das Dokument ist ausschließlich als Orientierungshilfe anzusehen, es bezieht sich auf US-Recht. Konsultieren Sie in jedem Fall einen spezialisierten Anwalt, bevor Sie es benutzen.'
%}
{% include t10_subsection_inner_round_box.html
   topic='**Planung und  Design:**'
   description='
       * Vereinbaren Sie die Planung und das Design der Anwendung mit den Entwicklern und internen Stakeholdern, z.B. Sicherheits-Spezialisten.<br>* Definieren Sie, unterstützt von Sicherheits-Spezialisten, die Sicherheits-Architektur, allgemeine vorbeugende Maßnahmen und gezielte Gegenmaßnahmen entsprechend dem Schutzbedarf und dem erwarteten Gefährdungsniveau.<br>* Stellen Sie sicher, dass der Anwendungseigentümer Restrisiken akzeptiert oder zusätzliches Budget bereitstellt.<br>* Stellen Sie sicher, dass es in jedem Sprint Sicherheits-Stories enthalten sind, die Auflagen für nicht-funktionale Anforderungen enthalten.'
%}
{% include t10_subsection_inner_round_box.html
   topic='**Deployment, Testen und Rollout:**'
   description='
       * Automatisieren Sie das Deployment von Anwendungen, Schnittstellen und allen benötigten Komponenten mit sicheren Konfigurationsvoreinstellungen, inkl. der benötigen Berechtigungen.<br>* Testen Sie die technischen Funktionen und die Integration in die IT-Architektur, koordinieren Sie fachliche Tests.<br>* Erzeugen Sie “Use-" und “Abuse-Testfälle” aus technischer und fachlicher Sicht.<br>* Koordinieren Sie Sicherheits-Tests gemäß den internen Prozessen, dem Schutzbedarf und dem angenommenen Gefährdungsniveau der Anwendung.<br>* Nehmen Sie die Anwendung in Betrieb und übernehmen Sie ggf. Daten aus Altanwendungen.<br>* Vervollständigen Sie die Dokumentation, inkl. in der Configuration Management Data Base (CMDB) und die Sicherheitsarchitektur.'
%}
{% include t10_subsection_inner_round_box.html
   topic='**Betrieb und Change-Management:**'
   description='
       * Das Betriebshandhandbuch muss Vorgaben für den sicheren Betrieb der Anwendung enthalten, z.B. Patchmanagement.<br>* Sensibilisieren Sie die Anwender für Sicherheitsaspekte und lösen Sie Konflikte zwischen Benutzbarkeit und Sicherheit.<br>* Planen und begleiten Sie Changes, z.B. Versionswechsel der Anwendung oder anderer Komponenten wie das Betriebssystem, Middleware und Bibliotheken.<br>* Aktualisieren Sie die vollständige Dokumentation, inkl. der CMDB, der Sicherheitsarchitektur, vorbeugende Maßnahmen, Gegenmaßnahmen und das Betriebshandbuch.'
%}
{% include t10_subsection_inner_round_box.html
   topic='**Außerbetriebnahme von Anwendungen:**'
   description='
       * Weiterhin benötigte Daten sollten archiviert werden, alle anderen Daten sollten sicher gelöscht werden.<br>* Nehmen Sie die Anwendung auf sichere Weise außer Betrieb, inkl. dem Löschen von nicht mehr benötigten Benutzerkonten, Rollen und Rechten.<br>* Ändern Sie den Zustand der Anwendung in der CMDB auf "außer Betrieb".'
%}
{%- include t10_subsection_end.html -%}
