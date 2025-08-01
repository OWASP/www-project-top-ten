---

document: OWASP Top Ten 2017 (es)
year: 2017
order: 18
en: What's Next for Security Testers
title: Próximos pasos para Testers
lang: es
layout: full-width-document
author:
contributors: vtamara
tags: OWASP Top Ten 2017 (es), Top Ten, es
redirect_from:
  - 2017/es/What%2527s_Next_for_Security_Testers.html

---

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html text="Establecer auditorias continuas de seguridad de las aplicaciones" pos="firstWhole" -%}

Construir código de modo seguro es importante. Pero es crítico verificar que la seguridad que pretende construir
está realmente presente, correctamente implementada, y es utilizada en todos los lugares donde se supone que debe
serlo. El objetivo de las pruebas de seguridad es proveer esta evidencia. El trabajo es difícil y complejo, y los procesos
modernos de desarrollo a alta velocidad como Agile y DevOps han colocado una presión extrema en los enfoques y
las herramientas tradicionales. Por lo tanto lo alentamos a pensar en cómo va a enfocarse en lo que es importante
para su portafolio de aplicaciones, y hacerlo efectivo en términos de costo.<br>

Los riesgos modernos cambian rápidamente, así que los días de escanear o hacer un test de penetración a una
aplicación para encontrar vulnerabilidades una vez al año han pasado hace tiempo. El desarrollo moderno de software
requiere revisión continua de seguridad de la aplicación a través de todo el ciclo de vida del desarrollo de software. Se
debe analizar cómo mejorar los canales de desarrollo existentes automatizando la seguridad para que no retrase el
desarrollo. Cualquiera sea el enfoque que elija, considere el costo anual de revisar, clasificar, remediar, revisar de
nuevo, y volver a poner en producción una sola aplicación, multiplicado por la cantidad de aplicaciones.<br>

<br>
{% include t10_subsection_inner_round_box.html
   topic='**Comprender el Modelo de las Amenazas:**'
   description="Antes de comenzar la revisión, asegúrese de comprender en qué es importante emplear el tiempo. Las prioridades vienen del Modelado de Amenazas, así que si Ud. no tiene uno, necesita crearlo antes de la revisión.
Considere usar [OWASP ASVS](/www-project-application-security-verification-standard) y la [Guía de pruebas de seguridad OWASP](https://owasp.org/www-project-web-security-testing-guide/) como un insumo y no confíe en vendedores de herramientas para decidir qué es importante para su negocio."
%}
{% include t10_subsection_inner_round_box.html
   topic='**Comprender su SDLC:**'
   description="Su enfoque de la revisión de seguridad de aplicaciones debe ser altamente compatible con las personas, procesos y herramientas que usa en su SDLC. Intentos de forzar pasos, flujos de autorizaciones y revisiones extra probablemente causarán fricción, serán evitados y difíciles de superar. Busque oportunidades naturales para recabar información de seguridad y retroalimente su proceso con ella."
%}
{% include t10_subsection_inner_round_box.html
   topic='**Estrategias de pruebas:**'
   description="Escoja la técnica más simple, rápida y precisa para verificar cada requerimiento. El [Marco de Trabajo de Conocimiento en Seguridad de OWASP](/www-project-security-knowledge-framework) y el  [Estándar de Verificación de Seguridad de Aplicaciones de OWASP](/www-project-application-security-verification-standard) pueden ser buenas fuentes de requerimientos de seguridad funcionales y no funcionales en la revisión y en las pruebas de unidad y de integración. Considere los recursos humanos requeridos para lidiar con falsos positivos provenientes del uso de herramientas automáticas, así como con los serios peligros de los falsos negativos."
%}
{% include t10_subsection_inner_round_box.html
   topic='**Lograr Cobertura y Precisión:**'
   description="No comience por probarlo todo. Concéntrese en lo que es importante y amplíe su programa de verificación con el tiempo. Esto significa ampliar el conjunto de defensas y riesgos de seguridad que se prueban automáticamente, así como ampliar el conjunto de aplicaciones y APIs que se incluyen en el alcance. El objetivo es lograr un estado en el que la seguridad esencial de todas sus aplicaciones y API se verifique continuamente."
%}
{% include t10_subsection_inner_round_box.html
   topic='**Comunicar los hallazgos claramente:**'
   description="No importa que tan buena sea su revisión, no hará ninguna diferencia a menos que la comunique efectivamente. Construya confianza mostrando que comprende cómo funciona la aplicación. Describa claramente y sin jerga técnica como puede ser abusada e incluya un escenario de ataque para hacerlo real. Haga una estimación realista de qué tan difícil es descubrir una vulnerabilidad y explotarla, y que tan malo podría ser. Finalmente, distribuya los hallazgos en las herramientas de desarrollo que los equipos ya usan, no en archivos PDF."
%}
{%- include t10_subsection_end.html -%}
