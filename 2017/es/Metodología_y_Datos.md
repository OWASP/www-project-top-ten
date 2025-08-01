---

document: OWASP Top Ten 2017 (es)
year: 2017
order: 23
en: Top 10-2017 Methodology and Data
title: Metodología y Datos
lang: es
layout: full-width-document
author:
contributors: vtamara
tags: OWASP Top Ten 2017 (es), Top Ten, es
redirect_from:
  - 2017/es/Methodology_and_Data

---
{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html text="Visión" pos="firstWhole" -%}
En el Congreso del Proyecto OWASP, participantes activos y miembros de la 
comunidad decidieron tener una visión de futuro, enfocados en dos tipos de 
vulnerabilidades, con un orden definido parcialmente por datos cuantitativos y
encuestas cualitativas.

{%- include t10_subsection.html text="Encuesta a la Indsutria" pos="whole" -%}

Para la encuesta, recopilamos las categorías de vulnerabilidades que estaban 
identificadas previamente como “en la cúspide” o que se mencionaban en la 
lista de correo de OWASP Top 10 2017 RC1. Las incluimos en una encuesta
ordenada y le pedimos a los encuestados que clasificaran las cuatro 
principales vulnerabilidades que consideraban deberían incluirse en el 
OWASP Top 10. La encuesta se realizó del 2 de agosto al 18 de septiembre 
de 2017. Se obtuvieron 516 respuestas y luego se clasificaron las 
vulnerabilidades.

<br>
{% include 2017/es/tabla_encuesta_industria.html %}
<br>

La exposición de la información privada es claramente la vulnerabilidad de 
mayor puntuación, pudiéndose considerar como un caso específico de la ya 
existente [A3:2017-Exposición de Datos Sensibles](A3_2017-Exposición_de_Datos_Sensibles]).
Las fallas criptográficas se pueden considerar dentro de la exposición de 
datos sensibles. La deserialización insegura fue clasificada en el tercer 
lugar, por lo que se agregó al Top 10 como [A8:2017-Deserialización Insegura](A8_2017_Deserialización Insegura)
luego de haber clasificado su riesgo. La cuarta, datos controlados por el 
usuario, incluida en [A5:2017 Pérdida de Control de Acceso](A5:2017 Pérdida de Control de Acceso), 
es bueno verla en la encuesta, ya que no hay muchos datos relacionados 
con vulnerabilidades de autorización. La categoría número cinco según la 
encuesta es Registro y Monitoreo Insuficientes, que es una buena opción para 
ser agregada a la lista de los 10 Principales, razón por la cual se ha 
convertido en [A10:2017 Registro y Monitoreo Insuficientes](A10:2017 Registro y Monitoreo Insuficientes). 
Hemos llegado a un punto en el que las aplicaciones necesitan ser capaces 
de definir lo que puede ser un ataque y generar registros, alertas, 
escalamiento y respuestas adecuados.

{%- include t10_subsection.html text="Llamada pública de datos" pos="whole" -%}

Tradicionalmente, los datos recopilados y analizados se basaban más en la 
frecuencia y en cuántas vulnerabilidades eran detectadas en las aplicaciones 
probadas. Como es bien sabido, las herramientas reportan tradicionalmente 
todos los casos encontrados de una vulnerabilidad y los seres humanos 
reportan tradicionalmente un solo hallazgo con un número de ejemplos. 
Esto hace que sea muy difícil agregar los dos estilos de reporte de forma 
comparable.<br>

Para la versión 2017, la tasa de incidencia se calculó en función del 
número de aplicaciones, en un conjunto de datos dado, que tenían uno o más 
tipos específicos de vulnerabilidades. Los datos de los contribuyentes más 
grandes fueron recolectados de dos formas: la primera fue la manera 
tradicional de contar cada instancia encontrada de una vulnerabilidad;
mientras que la segunda fue el conteo de aplicaciones en las que se 
encontró cada vulnerabilidad (una o más veces). Aunque no es perfecto, esto 
nos permite comparar razonablemente los datos de obtenidos tanto por las 
herramientas asistidas por humanos como por pruebas humanas asistidas por 
herramientas. Los datos en bruto y el trabajo de análisis se encuentran 
disponibles en [GitHub](https://github.com/OWASP/Top10/tree/master/2017/datacall). 
Nos proponemos ampliarlo con una estructura adicional de datos en futuras 
versiones del Top 10.<br>

Recibimos más de 40 respuestas al llamado público de datos. Dado que muchas 
de ellas procedían del público original que se centraba en la frecuencia, 
pudimos utilizar datos de 23 contribuyentes que cubrían unas 114.000 
aplicaciones aproximadamente. Cuando fue posible, utilizamos un periodo de 
tiempo de un año identificado por el colaborador. La mayoría de las 
aplicaciones son únicas, aunque reconocemos la existencia de algunas 
aplicaciones repetidas entre los datos anuales de Veracode. Los 23 conjuntos 
de datos utilizados se identificaron como pruebas humanas asistidas por
herramientas o bien como tasas de incidencia proporcionadas específicamente 
por herramientas asistidas por humanos. Las anomalías en los datos 
seleccionados de incidencia del 100%+ se ajustaron hasta el 100% máximo. 
Para calcular la tasa de incidencia, se calculó el porcentaje de las 
aplicaciones totales que contenían cada tipo de vulnerabilidad. La 
clasificación de la incidencia se utilizó para el cálculo de la prevalencia 
en el riesgo global en la clasificación del Top 10.<br>

{% include t10_subsection_end.html %}
