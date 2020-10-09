---

document: OWASP Top Ten 2017 (de)
year: 2017
order: 18
en: What%27s_Next_for_Security_Testers
title: Nächste Schritte für Sicherheitstester
lang: de
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017 (de), Top Ten, de
redirect_from:
  - 2017/de/What%2527s_Next_for_Security_Testers

---

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html pos="firstWhole" text="Establish Continuous Application Security Testing / Dauerhafte Tests der Anwendungssicherheit etablieren" -%}
Die Erstellung von sicherem Code ist sehr wichtig. Noch wichtiger jedoch ist die Überprüfung, dass die Sicherheit, die in die Anwendung implementiert werden sollte, auch tatsächlich vorhanden sowie korrekt implementiert ist und an allen vorgesehenen Stellen eingesetzt wird. Das Ziel eines Anwendungssicherheitstest ist es, dies zu belegen. Diese Arbeit ist schwierig und komplex, zusätzlich üben moderne Entwicklungsprozesse, wie agile Entwicklung oder DevOps, einen erheblichen Druck auf traditionelle Vorgehensweisen und Tools aus. Daher empfehlen wir eindringlich, sich ausgiebig Gedanken darüber zu machen, wie man sich auf das Wesentliche und Wichtige innerhalb seines kompletten Anwendungsportfolios konzentrieren und das Testen kosteneffizient durchführen kann.
Die aktuelle Risikolandschaft verändert sich schnell, sodass die Zeiten von einmal jährlich durchgeführten Scans oder Penetrationstests längst vorbei sind. Moderne Softwareentwicklung erfordert <u>kontinuierliche</u> Anwendungssicherheitstests über den gesamten Softwareentwicklungsprozess. Hierbei sollte im Auge behalten werden, wie existierende Entwicklungspipelines mit automatischen Sicherheitstests verbessert werden können, ohne die Entwicklung zu verlangsamen. Unabhängig von dem gewählten Ansatz müssen jährliche Kosten für Testen, Priorisieren (Triage), Korrigieren, erneutes Testen sowie erneutes Ausliefern einer einzelnen Anwendung multipliziert mit der Größe des Anwendungsportfolios berücksichtig werden.
<br>
{% include t10_subsection_inner_round_box.html
   topic='**Das Angreifermodell verstehen:**'
   description='
       Bevor Sie mit dem Testen beginnen, vergewissern Sie sich, dass Sie wissen, wofür Sie Zeit benötigen. Prioritäten ergeben sich aus dem Bedrohungsmodell. Falls noch kein Modell vorliegt, müssen Sie vor dem Testen ein solches erstellen. Erwägen Sie die Verwendung von [OWASP ASVS](/www-project-application-security-verification-standard) oder des [OWASP Testing Guides](/www-project-web-security-testing-guide) und verlassen Sie sich nicht auf Tool-Anbieter, um zu entscheiden, was für Ihr Unternehmen wichtig ist.'
%}
{% include t10_subsection_inner_round_box.html
   topic='**Den eigenen SDLC verstehen:**'
   description='
       Ihr Ansatz für die Sicherheitsprüfung von Anwendungen muss mit den Personen, Prozessen und Tools, die Sie in Ihrem Software Development Lifecycle (SDLC) verwenden, in hohem Maße kompatibel sein. Versuche, zusätzliche Schritte, Gatter und Überprüfungen zu erzwingen, verursachen wahrscheinlich Spannungen, werden umgangen und sind schlecht skalierbar. Achten Sie auf natürliche Möglichkeiten, Sicherheitsinformationen zu sammeln und in Ihren Prozess einfließen zu lassen.'
%}
{% include t10_subsection_inner_round_box.html
   topic='**Test-Strategien:**'
   description='
       Wählen Sie zur Verifikation jeder einzelnen Anforderung die einfachste, schnellste und genaueste Technik. Das [OWASP Security Knowledge Framework](/www-project-security-knowledge-framework) und der [OWASP Application Security Verification Standard](/www-project-application-security-verification-standard) können eine gute Quelle für funktionale und nicht-funktionale Anforderungen für Ihre Unit- und Integrationstests sein. Stellen Sie sicher, dass Sie die erforderlichen Personal-ressourcen für den Umgang mit False-Positives aus der Verwendung automatisierter Werkzeuge sowie die ernsten Gefahren von False-Negatives berücksichtigen.'
%}
{% include t10_subsection_inner_round_box.html
   topic='**Abdeckung und Genauigkeit erreichen:**'
   description='
       Es ist nicht erforderlich, zu Beginn alles zu testen. Fokussieren Sie sich auf das Wichtigste und erweitern Sie mit der Zeit Ihren Prüfungsplan. Dies beinhaltet sowohl das Erweitern der Sammlung von Sicherheitsmaßnahmen und Risiken, die automatisch verifiziert werden, als auch die Erweiterung der abgedeckten Anwendungen und APIs. Das Ziel ist es einen Status zu erreichen, in dem die essentielle Sicherheit aller Applikationen und APIs kontinuierlich verifiziert wird.'
%}
{% include t10_subsection_inner_round_box.html
   topic='**Ergebnisse klar kommunizieren:**'
   description='
       Egal wie gut Sie im Testen sind, es macht keinen Unterschied bis Sie es effizient kommunizieren. Bauen Sie Vertrauen auf, indem Sie zeigen, dass Sie verstehen wie die Anwendung funktioniert. Beschreiben Sie klar und ohne Fachsprache, wie man das Gefundene ausnutzen kann und fügen Sie ein Angriffsszenario bei, um die möglichen Angriffe realitätsnah darzustellen. Machen Sie eine realistische Einschätzung, wie schwer es ist, die Schwachstelle zu finden sowie auszunutzen und wie schwerwiegend das wäre. Stellen Sie die Ergebnisse in den Tools bereit, die die Entwicklerteams benutzen, nicht als PDF-Dateien.'
%}
{%- include t10_subsection_end.html -%}
