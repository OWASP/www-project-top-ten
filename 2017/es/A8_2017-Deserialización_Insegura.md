---

document: OWASP Top Ten 2017 (es)
year: 2017
order: 14
en: A8:2017-Insecure Deserialization
title: A8:2017-Deserialización Insegura
lang: es
layout: full-width-document
author:
contributors: vtamara
tags: OWASP Top Ten 2017 (es), Top Ten, A8:2017, es
exploitability: 1
prevalence: 2
detectability: 2
technical: 3
redirect_from:
  - 2017/es/A8-Insecure_Deserialization

---

{% include risk_begin.html %}
{%- include risk_description.html pos="firstLeft" -%}

Lograr la explotación de deserialización es difícil, ya que los
exploits distribuidos raramente funcionan sin cambios o ajustes en
su código fuente.

{%- include risk_description.html pos="mid" -%}

Este ítem se incluye en el Top 10 basado en una
[encuesta a la industria](https://owasp.blogspot.com/2017/08/owasp-top-10-2017-project-update.html) 
y no en datos cuantificables.<br/>
Algunas herramientas pueden descubrir 
defectos de deserialización, pero con frecuencia se necesita ayuda humana 
para validarlo. Se espera que los datos de prevalencia de estos
errores aumenten a medida que se desarrollen más
herramientas para ayudar a identificarlos y abordarlos.

{%- include risk_description.html pos="right" -%}

No se debe desvalorizar el impacto de los errores de deserialización.
Pueden llevar a la ejecución remota de código, uno de los ataques más
serios posibles. El impacto al negocio depende de las
necesidades de la aplicación y de los datos.

{%- include risk_end.html -%}

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html token="isTheApplicationVulnerable" pos="firstLeft" -%}

Aplicaciones y APIs serán vulnerables si deserializan objetos
hostiles o manipulados por un atacante.
Esto da como resultado dos tipos primarios de ataques:<br/>
* Ataques relacionados con la estructura de datos y objetos;
donde el atacante modifica la lógica de la aplicación o logra
una ejecución remota de código que puede cambiar el
comportamiento de la aplicación durante o después de la
deserialización.<br/>
* Ataques típicos de manipulación de datos; como ataques
relacionados con el control de acceso, en los que se utilizan
estructuras de datos existentes pero se modifica su
contenido.<br/>

La serialización puede ser utilizada en aplicaciones para:<br>
* Comunicación remota e Inter-Procesos (RPC/IPC)<br>
* Protocolo de comunicaciones, Servicios Web y _Brokers_ de
mensajes.<br>
* _Caching_ y Persistencia.<br>
* Bases de datos, servidores de caché y sistemas de archivos.<br>
* Galletas HTTP cookies, parametros de formularios HTML, testigos de 
  autenteicacíond de una API<br>

{%- include t10_subsection.html token="howToPrevent" pos="right" -%}

El único patrón de arquitectura seguro es no aceptar objetos
serializados de fuentes no confiables o utilizar medios de
serialización que sólo permitan tipos de datos primitivos.
Si esto no es posible, considere alguno de los siguientes puntos:<br>
* Implemente verificaciones de integridad tales como firmas
digitales en cualquier objeto serializado, con el fin de detectar
modificaciones no autorizadas.<br>
* Durante la deserialización y antes de la creación del objeto,
exija el cumplimiento estricto de verificaciones de tipo de dato,
ya que el código normalmente espera un conjunto de clases
definibles. Se ha demostrado que se puede pasar por alto esta
técnica, por lo que no es aconsejable confiar sólo en ella.<br>
* Aísle el código que realiza la deserialización, de modo que se
ejecute en un entorno con los mínimos privilegios posibles.<br>
* Registre las excepciones y fallas en la deserialización, tales
como cuando el tipo recibido no es el esperado, o la
deserialización produce algún tipo de error.<br>
* Restrinja y monitoree las conexiones (I/O) de red desde
contenedores o servidores que utilizan funcionalidades de
deserialización.<br>
* Monitoree los procesos de deserialización, alertando si un
usuario deserializa constantemente.
<br>

{%- include t10_subsection.html token="exampleAttackScenarios" pos="left" -%}

**Escenario #1**: una aplicación _React_ invoca a un conjunto de
microservicios _Spring Boot_. Por ser programadores funcionales,
intentaron asegurar que su código fuera inmutable. La solución a
la que llegaron fue serializar el estado del usuario y pasarlo en
ambos sentidos con cada solicitud. Un atacante advierte la firma
“R00” del objeto Java, y usa la herramienta Java Serial Killer
para alcanzar ejecución de código remoto en el servidor de la
aplicación.<br>
**Escenario #2**: un foro PHP utiliza serialización de objetos PHP
para almacenar una “super" galleta HTML, que contiene el ID, rol, hash
de la contraseña y otros datos del estado del usuario:<br>
    {% include code_red_begin.html -%} a:4:{i:0;i:132;i:1;s:7:"Mallory";i:2;s:4:"user"; {%- include code_red_end.html %}
    {% include code_red_begin.html -%} i:3;s:32:"b6a8b3bea87fe0e05022f8f3c88bc960";} {%- include code_red_end.html %}

Un atacante modifica el objeto serializado para darse privilegios
de administrador a sí mismo:<br>

    {% include code_red_begin.html -%} a:4:{i:0;i:1;i:1;s:5:"Alice";i:2;s:5:"admin"; {%- include code_red_end.html %}
    {% include code_red_begin.html -%} i:3;s:32:"b6a8b3bea87fe0e05022f8f3c88bc960";} {%- include code_red_end.html %}

{%- include t10_subsection.html token="references" pos="right" -%}
**OWASP**<br>
* [OWASP Cheat Sheet: Deserialization](https://cheatsheetseries.owasp.org/cheatsheets/Deserialization_Cheat_Sheet.html)<br>
* [OWASP Proactive Controls: Validate All Inputs](/www-project-proactive-controls/v3/en/c5-validate-inputs)<br>
* [OWASP Application Security Verification Standard](/www-project-application-security-verification-standard)<br>
* [OWASP AppSecEU 2016: Surviving the Java Deserialization Apocalypse](https://speakerdeck.com/pwntester/surviving-the-java-deserialization-apocalypse)<br>
* [OWASP AppSecUSA 2017: Friday the 13th JSON Attacks](https://speakerdeck.com/pwntester/friday-the-13th-json-attacks)<br>
<br>
**Externos**<br>
* [CWE-502: Deserialization of Untrusted Data](https://cwe.mitre.org/data/definitions/502.html)<br>
* [Java Unmarshaller Security](https://github.com/mbechler/marshalsec)<br>
* [OWASP AppSec Cali 2015: Marshalling Pickles](http://frohoff.github.io/appseccali-marshalling-pickles/)
{% include t10_subsection_end.html %}
