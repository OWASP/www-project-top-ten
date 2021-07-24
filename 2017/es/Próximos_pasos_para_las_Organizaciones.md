---

document: OWASP Top Ten 2017 (es)
year: 2017
order: 19
en: What's Next for Organizations
title: Próximos pasos para las Organizaciones
lang: es
layout: full-width-document
author:
contributors: vtamara
tags: OWASP Top Ten 2017 (es), Top Ten, es
redirect_from:
  - 2017/es/What%2527s_Next_for_Organizations.html

---

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html text="Comience hoy su programa de seguridad en aplicaciones" pos="firstWhole" -%}

La seguridad en las aplicaciones ya no es opcional. Entre el aumento de los
ataques y las presiones de cumplimiento normativo, las organizaciones deben
establecer un mecanismo eficaz para asegurar sus aplicaciones y APIs.
Dado el asombroso número de líneas de código que ya están en producción,
muchas organizaciones luchan para conseguir gestionar un enorme
volumen de vulnerabilidades.<br>


OWASP recomienda a las organizaciones establecer un programa para aumentar el
conocimiento y mejorar la seguridad en todo su catálogo de aplicaciones y APIs.
Conseguir un nivel de seguridad adecuado requiere que diversas partes de la
organización trabajen juntos de manera eficiente, incluidos los departamentos
de seguridad y auditoria, desarrollo, gestión y el negocio.
Se requiere que la seguridad sea visible y medible, para que todos los
involucrados puedan entender la postura de la organización en cuanto a la
seguridad en aplicaciones. También es necesario centrarse en las actividades
y resultados que realmente ayuden a mejorar la seguridad de la empresa
mediante la reducción de riesgo de la forma más rentable posible. Algunas de
las actividades clave en la efectiva aplicación de los programas de seguridad
incluyen [OWASP SAMM](/www-project-samm) y la
[Guía OWASP de seguridad de aplicaciones para CISOs](https://wiki.owasp.org/index.php/Application_Security_Guide_For_CISOs) que es la fuente para la
mayoría de actividades clave en esta lista.<br>

<br>
{% include t10_subsection_inner_round_box.html
   topic='**Inicio:**'
   description="
        * Documentar todas las aplicaciones y sus activos de información asociados. Las organizaciones grandes deben considerar el uso de una Base de Datos de Gestión de la Configuración (CMDB) para esto.<br>
        * Establecer un [programa de seguridad de aplicaciones](/www-project-samm) e impulsar su adopción.<br>
        * Realizar un [análisis de brecha de capacidades](/www-project-samm) entre su organización y otras similares para definir las áreas clave de mejora y un plan de ejecución.<br>
        * Obtener la aprobación de la dirección y establecer una [campaña de concietización de seguridad en las aplicaciones](/www-project-samm) para toda la organización TI."
%}
{% include t10_subsection_inner_round_box.html
   topic='**Enfoque basado en el catálogo de riesgos:**'
   description="
       * Identificar y establecer las [necesidades de protección](/www-project-samm) de su [catálogo de aplicaciones](/www-project-samm) en base al riesgo inherente asociado al negocio, guiadas por las leyes de privacidad aplicables y otras regulaciones relevantes a los activos de datos a ser protegidos.<br>
       * Establecer un [modelo de calificación de riesgo común](/www-community/OWASP_Risk_Rating_Methodology), con un conjunto consistente de factores de impacto y probabilidad, que reflejen la tolerancia al riesgo de la organización.<br>
       * Medir y priorizar de forma acorde todas sus aplicaciones y APIs. Agregue los resultados al CMDB.<br>
       * Establecer directrices para garantizar y definir los niveles de cobertura y rigor requeridos."
%}
{% include t10_subsection_inner_round_box.html
   topic='**Contar con una base sólida:**'
   description="
       * Establecer un conjunto de [políticas y estándares](/www-project-samm) enfocado, que proporcione una base de referencia de seguridad de las aplicaciones, a las cuales todo el equipo de desarrollo debe adherirse.<br>
       * Definir [un conjunto de controles de seguridad reutilizables](/www-project-security-knowledge-framework), que complemente esas políticas y estándares y proporcionen una guía en su uso en el diseño y desarrollo.<br>
       * Establecer un [currículo de formación en seguridad en aplicaciones](/www-project-samm) que sea un requisito, dirigido a los diferentes roles y tecnologías de desarrollo."
%}
{% include t10_subsection_inner_round_box.html
   topic='**Integrar la Seguridad en los procesos existentes:**'
   description="
       * Definir actividades de [implementación segura y verificación](/www-project-samm) en los procesos operativos y de desarrollo existentes.<br>
       * Definir actividades como el [modelado de amenazas, diseño y revisión de seguridad, revisión de código, pruebas de intrusión](/www-project-samm) y remediación.<br>
       * Para tener éxito, proporcionar expertos en la materia y [servicios de apoyo a los equipos de desarrollo y del proyecto](/www-project-samm)."
%}
{% include t10_subsection_inner_round_box.html
   topic='**Proporcionar visibilidad a la gestión:**'
   description="
       * Gestionar a través de las métricas. Manejar las decisiones de mejora y provisión de recursos económicos, basándose en las métricas y el análisis de los datos capturados. Las métricas incluyen el seguimiento de las prácticas y actividades de seguridad, las vulnerabilidades presentes y las mitigadas, la cobertura de la aplicación, densidad de defectos por tipo y cantidad de instancias, etc.<br>
       * Analizar los datos de las actividades de implementación y verificación para buscar el origen de la causa y los patrones en las vulnerabilidades, para poder determinar mejoras estratégicas en la organización y el negocio. Aprender de los errores y ofrecer incentivos positivos para promover mejoras."
%}
{%- include t10_subsection_end.html -%}
