---

document: OWASP Top Ten 2017 (es)
year: 2017
order: 21
en: Note About Risks
title: Notas sobre los Riesgos
lang: es
layout: full-width-document
author:
contributors: vtamara
tags: OWASP Top Ten 2017 (es), Top Ten, es
redirect_from:
  - 2017/es/Note_About_Risks.html

---

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html text="El tema son los Riesgos que Representan las Debilidades" pos="firstWhole" -%}

La Metodología de Evaluación del Riesgo para el Top 10 está basada en la
[Metodología de Evaluación de Riesgo de OWASP](/www-community/OWASP_Risk_Rating_Methodology). 
Para cada categoría del Top 10, estimamos el riesgo típico que representa
cada vulnerabilidad en una aplicación web, al observar los factores de 
probabilidad comunes y los factores de impacto para esa vulnerabilidad.
Luego, ordenamos el Top 10 de acuerdo a todas aquellas vulnerabilidades que
típicamente presentan el riesgo más significativo para una aplicación. 
Estos factores son actualizados con cada edición del Top 10 a medida que 
cambian y evolucionan.<br>

La [Metodología de Evaluación de Riesgo de OWASP](/www-community/OWASP_Risk_Rating_Methodology) 
define numerosos factores para
ayudar a calcular el riesgo de una vulnerabilidad identificada. Sin embargo, 
el Top 10 debe basarse en generalidades en lugar de vulnerabilidades
específicas en aplicaciones y APIs reales. En consecuencia, nunca podremos ser
tan precisos para calcular los riesgos en sus propias aplicaciones. 
El propietario o administrador del sistema tiene más posibilidades de
juzgar la importancia de sus aplicaciones y datos, cuáles son sus amenazas, 
cómo ha sido construido y cómo está siendo operado el sistema.<br>

Nuestra metodología incluye tres factores de probabilidad para cada
vulnerabilidad (prevalencia, posibilidad de detección y facilidad de 
explotación) y un factor de impacto técnico. La escala de riesgos para cada 
factor utiliza el rango de 1 (bajo) a 3 (alto). La prevalencia de una 
vulnerabilidad es un factor que normalmente no es necesario calcular. 
Para los datos de prevalencia, se han obtenido estadísticas de un
conjunto de organizaciones distintas (como se menciona en la sección de 
Agradecimientos) y hemos calculado el promedio de los datos agregados, 
para elaborar el Top 10 de probabilidad de existencia según la prevalencia. 
Esta información fue posteriormente combinada con los dos factores de 
probabilidad (posibilidad de detección y facilidad de explotación) para 
calcular la tasa de probabilidad de cada vulnerabilidad. Esta tasa fue 
multiplicada por el impacto técnico promedio estimado de cada elemento, 
para finalmente elaborar la clasificación de riesgo total para cada elemento 
del Top 10 (cuanto mayor sea el resultado, mayor será el riesgo). La 
detectabilidad, la facilidad de explotación y el impacto se calcularon 
analizando los CVEs reportados asociados a las 10 categorías principales.<br>

**Nota**: tenga en consideración que este enfoque no tiene en cuenta la 
probabilidad del agente de amenaza. Tampoco se tiene en cuenta ninguno de 
los detalles técnicos asociados a su aplicación en particular. 
Cualquiera de éstos factores podrían afectar significativamente la 
probabilidad total de que un atacante encuentre y explote una vulnerabilidad 
en particular. Esta clasificación tampoco tiene en consideración el impacto 
real sobre su negocio. *Su organización* deberá decidir cuánto riesgo de 
seguridad en las aplicaciones y APIs está dispuesta a asumir dada su cultura, 
su industria y el entorno regulatorio. El propósito de OWASP Top 10 no es 
hacer el análisis de riesgo por usted.<br>

A modo de ejemplo, este diagrama ilustra los cálculos del riesgo de 
[A6:2017-Configuración de Seguridad Incorrecta](A6_2017-Configuración_de_Seguridad_incorrecta).
<br>
{% include risk_calculation_table.html %}
{% include t10_subsection_end.html %}
