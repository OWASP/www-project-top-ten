---

document: OWASP Top Ten 2017 (es)
year: 2017
order: 4
en: Release Notes
title: Novedades de esta versión
lang: es
layout: full-width-document
author:
contributors: vtamara
tags: OWASP Top Ten 2017 (es), Top Ten, es
redirect_from:
  - 2017/es/Release_Notes

---
{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html text="¿Qué ha cambiado de 2013 a 2017?" pos="firstWhole" -%}

Los cambios se han acelerado en los últimos cuatro años, y OWASP Top 10
necesitaba actualizarse.
Hemos rediseñado completamente el OWASP Top 10, mejorado la metodología,
utilizado un nuevo proceso de obtención de datos, trabajamos con la
comunidad, reordenamos los riesgos y los reescribimos desde cero, y agregamos
referencias a Marcos de trabajo (del inglés __frameworks__) y lenguajes que 
son utilizados actualmente.
En los últimos años, la tecnología base y la arquitectura de las
aplicaciones ha cambiado significativamente:<br>
* Los microservicios escritos en node.js y Spring Boot están reemplazando las
  aplicaciones monolíticas tradicionales. Los microservicios vienen con sus
  propios desafíos de seguridad, incluyendo el establecimiento de confianza
  entre microservicios, contenedores, gestión de secretos, etc. El antiguo
  código, que nunca esperó ser accesible desde Internet, se encuentra ahora
  detrás de un API o servicio RESTful, esperando a ser consumido por
  aplicaciones de una sola página (SPAs) y aplicaciones móviles.
  Las suposiciones arquitectónicas del código, como las llamadas
  confiables, ya no son válidas.<br>
* Las aplicaciones de una sola página, escritas en Marcos de trabajo 
  JavaScript como
  Angular y React, permiten la creación de interfaces de usuario altamente
  modulares con múltiples características. Las funcionalidades en el lado
  del cliente que tradicionalmente se han implementado en el servidor,
  traen consigo sus propios desafíos de seguridad.<br>
* JavaScript es ahora el lenguaje principal de la web, con node.js ejecutando
  el lado del servidor y los frameworks web modernos como Bootstrap,
  Electron, Angular y React ejecutándose en el cliente.<br>
<br>
**Nuevos riesgos, respaldados en datos:**<br>
* [A4:2017 – Entidades Externas XML(XXE)](A4_2017-Entidades_externas_XML_(XXE))
  es una nueva categoría, respaldada principalmente por los resultados de
  [las herramientas de análisis estático de código (SAST)](https://owasp.org/www-community/Source_Code_Analysis_Tools)
  usadas con conjuntos de datos<br>
<br>
**Nuevos riesgos, respaldados por la comunidad:**<br>
Le pedimos a la comunidad que nos proporcionara información sobre dos
categorías de debilidades. Luego de más de 500 envíos, y de eliminar
los problemas que ya estaban respaldados por datos (tales como Exposición
a Datos Sensibles y XXE), los dos nuevos riesgos son: <br>
* [A8:2017 – Deserialización Insegura](A8_2017-Deserialización_Insegura) que
  permite la ejecución remota de código o la manipulación de objetos
  sensibles en la plataforma afectada.<br>
* [A10:2017 – Registro y Monitoreo Insuficientes](A10_2017-Registro_y_Monitoreo_Insuficientes),
  la falta de estos aspectos puede impedir o demorar en forma significativa
  la detección de actividad maliciosa o de sustracción de datos, la respuesta
  a los incidentes y la investigación forense digital.<br>
<br>
**Fusionados o retirados, pero no olvidados:**<br>
* [A4 – Referencia Directa Insegura a Objetos](https://wiki.owasp.org/index.php/Top_10_2013-A4-Insecure_Direct_Object_References) y
  [A7 – Ausencia de Control de Acceso a las Funciones](https://wiki.owasp.org/index.php/Top_10_2013-A7-Missing_Function_Level_Access_Control) fueron
  fusionados en [A5:2017 – Pérdida de Control de Acceso](A5_2017–Pérdida_de_Control_de_Acceso).<br>
* [A8 – Falsificación de Peticiones en Sitios Cruzados (CSRF)](https://wiki.owasp.org/index.php/Top_10_2013-A8-Cross-Site_Request_Forgery_(CSRF))
  dado que varios Marcos de trabajo incluyen
  defensas contra CSRF, sólo se encontró en el 5% de las aplicaciones.<br>
* [A10 – Redirecciones y reenvíos no validados](https://wiki.owasp.org/index.php/Top_10_2013-A10-Unvalidated_Redirects_and_Forwards),
  aunque se encuentra en aproximadamente el 8% de las aplicaciones,
  fue superado ampliamente por XXE.<br>
<br>

{% include t10_subsection_end.html %}

{% include 2017/es/changes_from_2013_to_2017_table.html %}
