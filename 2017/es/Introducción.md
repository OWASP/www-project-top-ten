---

document: OWASP Top Ten 2017 (es)
year: 2017
order: 3
layout: full-width-document
en: Introduction
title: Introducción
lang: es
author:
contributors: vtamara
tags: OWASP Top Ten 2017 (es), Top Ten, es
redirect_from:
  - 2017/es/Introduction

---

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html text="¡Bienvenido al OWASP Top 10 - 2017!" pos="firstWhole" -%}
Esta importante actualización agrega varios puntos nuevos, incluyendo dos
seleccionados por la comunidad -
[A8:2017-Insecure Deserialization](A8_2017-Insecure_Deserialization) y
[A10:2017-Insufficient Logging &amp; Monitoring](A10_2017-Insufficient_Logging%2526Monitoring).
Dos diferenciadores clave sobre las versiones anteriores del OWASP Top 10
son las notables devoluciones de la comunidad y la gran cantidad de datos
recopilados de docenas de organizaciones, siendo posiblemente la mayor
cantidad de datos jamás reunidos en la preparación de un estándar de
seguridad de aplicaciones. Esto nos da la confianza de que el nuevo
OWASP Top 10 aborda los riesgos de seguridad de aplicaciones más impactantes
que enfrentan las organizaciones en la actualidad.<br>

El OWASP Top 10 - 2017 se basa principalmente en el envío de datos de más de
40 empresas que se especializan en seguridad de aplicaciones y una encuesta
de la industria que fue completada por más de 500 personas. Esta información
abarca vulnerabilidades recopiladas de cientos de organizaciones y más de
100.000 aplicaciones y APIs del mundo real. Las 10 principales categorías
fueron seleccionadas y priorizadas de acuerdo con estos datos de prevalencia,
en combinación con estimaciones consensuadas de explotabilidad,
detectabilidad e impacto.<br>

Uno de los principales objetivos del OWASP Top 10 es educar a los
desarrolladores, diseñadores, arquitectos, gerentes y organizaciones sobre
las consecuencias de las debilidades más comunes y más importantes de la
seguridad de las aplicaciones web. El Top 10 proporciona técnicas básicas
para protegerse contra estas áreas con problemas de riesgo alto, y
proporciona orientación sobre cómo continuar desde allí.

{%- include t10_subsection.html text="Hoja de ruta para las futuras actividades" pos="left" -%}
**No se detenga en el Top 10**. Hay cientos de fallas que
podrían afectar la seguridad general de una aplicación web,
como se describe en la

[Guía de Desarrolladores de OWASP](https://wiki.owasp.org/index.php/OWASP_Guide_Project)
y en las
[hojas de trucos de OWASP](/www-project-cheat-sheets).
Estas son lecturas esenciales para cualquier persona que desarrolle
aplicaciones web y APIs. En la Guía de Testing de OWASP encontrará
orientación sobre cómo reconocer vulnerabilidades de forma
efectiva en aplicaciones web.<br>

**Cambio constante**. El OWASP Top 10 continuará
cambiando. Aún sin cambiar una simple línea en el código
fuente de su aplicación, podría volverse vulnerable a medida
que se encuentren nuevas fallas y métodos de ataques. Para
obtener más información, revise los consejos al final del Top
10 en Próximos pasos para
[Desarrolladores](What%2527s_Next_for_Developers),

[Desarrolladores](Próximos_pasos_para_Desarrolladores),
[Testers de seguridad](Próximos_pasos_para_Testers),
[Organizaciones](Próximos_pasos_para_las_Organizaciones) y
[Administradores de aplicaciones](Próximos_pasos_para_los_Administradores_de_Aplicaciones).<br>

**Piense positivo**. Cuando esté listo para dejar de perseguir
vulnerabilidades y centrarse en establecer controles sólidos
de seguridad de aplicaciones, el proyecto
[Controles Proactivos de OWASP](/www-project-proactive-controls)
proporciona un punto de partida para
ayudar a los desarrolladores a incorporar la seguridad en sus
aplicaciones y el
[Estándar de Verificación de Seguridad en Aplicaciones de OWASP (ASVS)](/www-project-application-security-verification-standard)
es una guía para las organizaciones y *testers* de aplicaciones sobre
qué verificar.<br>

**Utilice las herramientas sabiamente**. Las vulnerabilidades
pueden ser bastante complejas y estar profundamente ocultas
en el código. En muchos casos, el enfoque más eficaz en
función de los costos, para encontrar y eliminar esas
debilidades es recurrir a expertos dotados de herramientas
avanzadas. Confiar sólo en las herramientas proporciona una
falsa sensación de seguridad y no es recomendable.<br>

**Empuje a la izquierda, derecha y hacia todas partes**. Enfóquese en
hacer de la seguridad una parte integral de la cultura en
desarrollo en su organización. Obtenga más información en
[Modelo de Madurez de Aseguramiento del Software de OWASP (SAMM)](/www-project-samm).<br>

{%- include t10_subsection.html text="Atribución" pos="right" -%}

Quisiéramos agradecer a las organizaciones que contribuyeron
con sus datos de vulnerabilidades para respaldar la
actualización de 2017. Recibimos más de 40 respuestas a
nuestra solicitud de información. Por primera vez, todos los
datos que contribuyeron a esta publicación del Top 10, así
como la lista completa de colaboradores, están a disposición
del público. Creemos que esta es una de las colecciones de
datos sobre vulnerabilidades más grandes y diversas que se
hayan recopilado de forma pública.<br>

Como hay más colaboradores que espacio, hemos creado una
[página dedicada a reconocer estas contribuciones](Agradecimientos).
Deseamos agradecer sinceramente a estas organizaciones por estar
dispuestas a compartir públicamente sus datos sobre
vulnerabilidades. Esperamos que esto continúe creciendo y
aliente a más organizaciones a hacer lo mismo. Posiblemente
esta publicación sea vista como uno de los hitos clave de la
seguridad basada en evidencia. El OWASP Top 10 no sería
posible sin estas increíbles contribuciones.<br>

Un especial agradecimiento a las más de 500 personas que se
tomaron el tiempo para completar la encuesta dirigida a la
industria. Su opinión ayudó a determinar dos nuevas
incorporaciones al Top 10. Los comentarios adicionales, notas
de aliento y críticas fueron muy valiosos.<br>

También nos gustaría agradecer a aquellas personas que
contribuyeron con comentarios constructivos y tiempo para
revisar la presente actualización del Top 10. En la medida de lo
posible, los hemos incluido en la página de
[Agradecimientos](Agradecimientos).<br>

Y finalmente, agradecemos a todos los traductores por ayudar
a hacer el OWASP Top 10 más accesible para todos.<br>

{% include t10_subsection_end.html %}
