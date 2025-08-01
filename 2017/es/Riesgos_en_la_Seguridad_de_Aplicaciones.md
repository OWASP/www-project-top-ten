---

document: OWASP Top Ten 2017 (es)
year: 2017
order: 5
en: Application Security Risks
title: Riesgos en la Seguridad de Aplicaciones
lang: es
layout: full-width-document
author:
contributors: vtamara
tags: OWASP Top Ten 2017 (es), Top Ten, es
redirect_from:
  - 2017/es/Application_Security_Risks

---

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html text="¿Cuáles son los riesgos en la Seguridad de las Aplicaciones?" pos="firstWhole" -%}
Los atacantes pueden, potencialmente, utilizar diferentes rutas a través 
de su aplicación para perjudicar su negocio u organización. 
Cada una de estas rutas representa un riesgo que puede o no ser
suficientemente grave como para merecer atención.<br>
<br>
![Risks 2017 Image]({{site.baseurl}}/assets/images/Risks-2017.png){:width="80%"}
<br>
<br>
  Algunas veces, estas rutas son fáciles de encontrar y explotar, mientras que
  otras son extremadamente difíciles.
  De la misma manera, el perjuicio ocasionado puede no tener consecuencias, o
  puede dejarlo en la quiebra. 
  A fin de determinar el riesgo para su organización, 
  puede evaluar la probabilidad asociada a cada agente de amenaza, vector
  de ataque, debilidad de seguridad y combinarlo con una estimación del 
  impacto técnico y de negocio para su organización. 
  Juntos, estos factores determinan su riesgo general.

{%- include t10_subsection.html text="¿Cuál es mi Riesgo?" pos="left" width='70%' -%}
El [OWASP Top 10](https://owasp.org/www-project-top-ten) se enfoca en 
identificar los riesgos más críticos para un amplio tipo de organizaciones. 
Para cada uno de estos riesgos, se proporciona información genérica sobre 
la probabilidad y el impacto técnico, utilizando el siguiente esquema 
de evaluación, basado en la 
[Metodología de Evaluación de Riesgos de OWASP](/www-community/OWASP_Risk_Rating_Methodology).<br>.
<br>
{% include risk_factor_names_table.html %}
<br>
En esta edición, hemos actualizado el sistema de clasificación de riesgo en
comparación con la versión anterior, para ayudar a calcular la probabilidad 
y el impacto de cualquier riesgo determinado. 
Para obtener más información, consulte las [Notas sobre los riesgos](Top_10-2017_Notas_sobre_los_Riesgos).
<br>
Cada organización es única, y también lo son los agentes de amenaza para esa
organización, sus objetivos y el impacto de cualquier brecha. Si una
organización de interés público utiliza un sistema de gestión de 
contenido (CMS) para manipular información pública y el sistema de 
salud utiliza el mismo CMS para tratar datos sensibles, los agentes 
de amenaza y los impactos en el negocio son muy distintos para el mismo 
software. Es fundamental comprender el riesgo para su organización en 
función de los agentes de amenaza aplicables a su negocio y los 
impactos comerciales.
<br>
En la medida de lo posible, los nombres de los riesgos en el Top 10 están
alineados con el marco de las 
[Enumeración de Debilidades Comunes (CWE)](https://cwe.mitre.org/) 
para promover prácticas de seguridad generalmente aceptadas 
y reducir la confusión. 

{%- include t10_subsection.html text="Referencias" pos="right" -%}
**OWASP**<br>
* [Metodología de evaluación de riesgos de OWASP](/www-community/OWASP_Risk_Rating_Methodology)<br>
* [Modelado de amenazas y riesgos](https://wiki.owasp.org/index.php/Application_Threat_Modeling)<br>
<br>
**Externas**<br>
* [ISO 31000: Risk Management Std](https://www.iso.org/iso-31000-risk-management.html)<br>
* [ISO 27001: ISMS](https://www.iso.org/isoiec-27001-information-security.html)<br>
* [NIST Cyber Framework (US)](https://www.nist.gov/cyberframework)<br>
* [ASD Strategic Mitigations (AU)](https://www.asd.gov.au/infosec/mitigationstrategies.htm)<br>
* [NIST CVSS 3.0](https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator)<br>
* [Microsoft Threat Modelling Tool](https://aka.ms/tmt)<br>
{% include t10_subsection_end.html %}
