---

document: OWASP Top Ten 2017 (es)
year: 2017
order: 6
en: 2017 Top 10
title: 2017 Top 10
lang: es
layout: full-width-document
author:
contributors: vtamara
tags: OWASP Top Ten 2017 (es), Top Ten, es
redirect_from:

---

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html text="OWASP Top 10 2017 Riesgos en Seguridad de
Aplicaciones" pos="firstWhole" -%}
<br>
{% include t10_subsection_inner_round_box.html
   topic='[A1:2017-Inyección](A1_2017-Inyección)'
   description="Las fallas de inyección, como SQL, NoSQL, OS o LDAP ocurren 
   cuando se envían datos no confiables a un intérprete, como parte de un 
   comando o consulta. Los datos dañinos del atacante pueden engañar al 
   intérprete para que ejecute comandos involuntarios o acceda a los datos 
   sin la debida autorización."
%}
{% include t10_subsection_inner_round_box.html
   topic='[A2:2017-Pérdida de Autenticación](A2_2017-Pérdida_de_Autenticación)'
   description="Las funciones de la aplicación relacionadas a autenticación y
   gestión de sesiones son implementadas incorrectamente, permitiendo a los 
   atacantes comprometer usuarios y contraseñas, token de sesiones, o 
   explotar otras fallas de implementación para asumir la identidad de 
   otros usuarios (temporal o permanentemente)."
%}
{% include t10_subsection_inner_round_box.html
   topic='[A3:2017-Exposición de datos sensibles](A3_2017-Exposición_de_datos_sensibles)'
   description="Muchas aplicaciones web y APIs no protegen adecuadamente datos
   sensibles, tales como información financiera, de salud o Información 
   Personalmente Identificable (PII). Los atacantes pueden robar o 
   modificar estos datos protegidos inadecuadamente para llevar a cabo 
   fraudes con tarjetas de crédito, robos de identidad u otros delitos. 
   Los datos sensibles requieren métodos de protección adicionales, 
   como el cifrado en almacenamiento y tránsito"
%}
{% include t10_subsection_inner_round_box.html
   topic='[A4:2017-Entidades externas XML (XXE)](A4_2017-Entidades_externas_XML_(XXE))'
   description="Muchos procesadores XML antiguos o mal configurados evalúan
   referencias a entidades externas en documentos XML. Las entidades externas 
   pueden utilizarse para revelar archivos internos mediante la URI 
   o archivos internos en servidores no actualizados, escanear puertos de
   la LAN, ejecutar código de forma remota y realizar ataques de 
   denegación de servicio (DoS)."
%}
{% include t10_subsection_inner_round_box.html
   topic='[A5:2017-Pérdida de Control de Acceso](A5_2017-Pérdida_de_Control_de_Acceso)'
   description="Las restricciones sobre lo que los usuarios autenticados 
   pueden hacer no se aplican correctamente. Los atacantes pueden explotar 
   estos defectos para acceder, de forma no autorizada, a funcionalidades 
   y/o datos, cuentas de otros usuarios, ver archivos sensibles,
   modificar datos, cambiar derechos de acceso y permisos, etc."
%}
{% include t10_subsection_inner_round_box.html
   topic='[A6:2017-Configuración de Seguridad incorrecta](A6_2017-Configuración_de_Seguridad_incorrecta)'
   description="La configuración de seguridad incorrecta es un problema muy
   común y se debe en parte a establecer la configuración de forma manual, 
   ad hoc o por omisión (o directamente por la falta de configuración). 
   Son ejemplos: S3 buckets abiertos, cabeceras HTTP mal configuradas, 
   mensajes de error con contenido sensible, falta de parches y 
   actualizaciones, marcos de trabajo, dependencias y componentes 
   desactualizados, etc."
%}
{% include t10_subsection_inner_round_box.html
   topic='[A7:2017-Secuencias de Comandos en Sitios Cruzados (XSS)](A7_2017-Secuencias_de_Comandos_en_Sitios_Cruzados_(XSS))'
   description="Los XSS ocurren cuando una aplicación toma datos no 
   confiables y los envía al navegador web sin una validación y codificación 
   apropiada; o actualiza una página web existente con datos
   suministrados por el usuario utilizando una API que ejecuta JavaScript 
   en el navegador. Permiten ejecutar comandos en el navegador de la víctima 
   y el atacante puede secuestrar una sesión, modificar los 
   sitios web, o redireccionar al usuario hacia un sitio malicioso."
%}
{% include t10_subsection_inner_round_box.html
   topic='[A8:2017-Deserialización Insegura](A8_2017-Deserialización_Insegura)'
   description="Estos defectos ocurren cuando una aplicación recibe objetos
   serializados dañinos y estos objetos pueden ser manipulados o borrados 
   por el atacante para realizar ataques de repetición, inyecciones o 
   elevar sus privilegios de ejecución. En el peor de los casos, la 
   deserialización insegura puede conducir a la ejecución remota de 
   código en el servidor."
%}
{% include t10_subsection_inner_round_box.html
   topic='[A9:2017-Uso de Componentes con vulnerabilidades conocidas](A9_2017-Uso_de_Componentes_con_vulnerabilidades_conocidas)'
   description="Los componentes como bibliotecas, marcos de trabajo y otros 
   módulos se ejecutan con los mismos privilegios que la aplicación. 
   Si se explota un componente vulnerable, el ataque puede provocar
   una pérdida de datos o tomar el control del servidor. Las aplicaciones 
   y API que utilizan componentes con vulnerabilidades conocidas pueden 
   debilitar las defensas de las aplicaciones y permitir diversos 
   ataques e impactos. "
%}
{% include t10_subsection_inner_round_box.html
   topic='[A10:2017-Registro y Monitoreo Insuficientes](A10_2017-Registro_y_Monitoreo_Insuficientes)'
   description="El registro y monitoreo insuficiente, junto a la falta de
   respuesta ante incidentes permiten a los atacantes mantener el ataque 
   en el tiempo, pivotear a otros sistemas y manipular, extraer o
   destruir datos. Los estudios muestran que el tiempo de detección de una
   brecha de seguridad es mayor a 200 días, siendo típicamente detectado 
   por terceros en lugar de por procesos internos"
%}
{% include t10_subsection_end.html %}
