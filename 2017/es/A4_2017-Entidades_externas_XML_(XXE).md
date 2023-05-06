---

document: OWASP Top Ten 2017 (es)
year: 2017
order: 10
en: A4:2017-XML External Entities (XXE)
title: A4:2017-Entiedades externas XML (XXE)
lang: es
layout: full-width-document
author:
contributors: vtamara
tags: OWASP Top Ten 2017 (es), Top Ten, A4:2017, es
exploitability: 2
prevalence: 2
detectability: 3
technical: 3
redirect_from:
  - 2017/es/A4-XML_External_Entities_(XXE).html

---

{% include risk_begin.html %}
{%- include risk_description.html pos="firstLeft" -%}

Los atacantes pueden explotar procesadores XML vulnerables si pueden cargar
o incluir contenido hostil en un documento XML, explotando código
vulnerable, dependencias o integraciones.

{%- include risk_description.html pos="mid" -%}

De forma predeterminada, muchos procesadores XML antiguos permiten 
especificar una entidad externa, una URI que se referencia y evalúa 
durante el procesamiento XML. Las herramientas 
[SAST](/www-community/Source_Code_Analysis_Tools) pueden descubrir 
estos problemas inspeccionando las dependencias y la configuración. 
Las herramientas [DAST](/www-community/Vulnerability_Scanning_Tools) requieren 
pasos manuales adicionales para detectar y explotar estos problemas. 
Los testers necesitan ser entrenados para hacer estas pruebas, ya que no 
eran realizadas antes de 2017

{%- include risk_description.html pos="right" -%}

Estos defectos se pueden utilizar para extraer datos, ejecutar una solicitud
remota desde el servidor, escanear sistemas internos, realizar un ataque
de denegación de servicio y ejecutar otro tipo de ataques.
El impacto al negocio depende de las necesidades de la aplicación y de los
datos.

{%- include risk_end.html -%}

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html token="isTheApplicationVulnerable" pos="firstLeft" -%}

Las aplicaciones y, en particular los servicios web basados en XML, o
integraciones que utilicen XML, pueden ser vulnerables a este
ataque si:<br>

* La aplicación acepta XML directamente, carga XML desde
fuentes no confiables o inserta datos no confiables en
documentos XML. Por último, estos datos son analizados
sintácticamente por un procesador XML.<br>

* Cualquiera de los procesadores XML utilizados en la aplicación
o los servicios web basados en SOAP, poseen habilitadas las
[definiciones de tipo de documento (DTDs)](https://en.wikipedia.org/wiki/Document_type_definition). 
Dado que los mecanismos exactos para deshabilitar el procesamiento de
DTDs varía para cada procesador, se recomienda consultar la
[hoja de trucos para prevención de XXE de OWASP](https://cheatsheetseries.owasp.org/cheatsheets/XML_External_Entity_Prevention_Cheat_Sheet.html).<br>

* La aplicación utiliza SAML para el procesamiento de
identidades dentro de la seguridad federada o para propósitos
de Single Sign-On (SSO). SAML utiliza XML para garantizar la
identidad de los usuarios y puede ser vulnerable.<br>
* La aplicación utiliza SOAP en una versión previa a la 1.2 y, si
las entidades XML son pasadas a la infraestructura SOAP,
probablemente sea susceptible a ataques XXE.<br>
* Ser vulnerable a ataques XXE significa que probablemente la
aplicación también es vulnerable a ataques de denegación de
servicio, incluyendo el ataque Billion Laughs.<br>

{%- include t10_subsection.html token="howToPrevent" pos="right" -%}

El entrenamiento del desarrollador es esencial para identificar y
mitigar defectos de XXE. Aparte de esto, prevenir XXE requiere:<br>

* De ser posible, utilice formatos de datos menos complejos
como JSON y evite la serialización de datos confidenciales.<br>

* Actualice los procesadores y bibliotecas XML que utilice la
aplicación o el sistema subyacente. Utilice validadores de
dependencias. Actualice SOAP a la versión 1.2 o superior.<br>

* Deshabilite las entidades externas de XML y procesamiento
DTD en todos los analizadores sintácticos XML en su
aplicación, según se indica en la 
[hoja de trucos para prevención de XXE de OWASP](https://cheatsheetseries.owasp.org/cheatsheets/XML_External_Entity_Prevention_Cheat_Sheet.html).<br>

* Implemente validación de entrada positiva en el servidor (“lista
blanca”), filtrado y saneado para prevenir el ingreso de
datos dañinos dentro de documentos, cabeceras y nodos XML.<br>

* Verifique que la funcionalidad de carga de archivos XML o XSL
valide el XML entrante, usando validación XSD o similar.<br>

* Las herramientas [SAST](/www-community/Source_Code_Analysis_Tools) pueden 
ayudar a detectar XXE en el código fuente, aunque la revisión manual de 
código es la mejor alternativa en aplicaciones grandes y complejas.<br>

Si estos controles no son posibles, considere usar parcheo
virtual, gateways de seguridad de API, o Cortafuegos de
Aplicaciones Web (WAFs) para detectar, monitorear y bloquear
ataques XXE.

{%- include t10_subsection.html token="exampleAttackScenarios" pos="left" -%}

Han sido publicados numerosos XXE, incluyendo ataques a
dispositivos embebidos. Los XXE ocurren en una gran cantidad
de lugares inesperados, incluyendo dependencias
profundamente anidadas. La manera más fácil es cargar un
archivo XML malicioso, si es aceptado: <br>

**Escenario #1**: el atacante intenta extraer datos del servidor:<br>
    {% include code_begin.html -%} &lt;?xml version="1.0" encoding="ISO-8859-1"?&gt; {%- include code_end.html %}
    {% include code_begin.html -%} <!DOCTYPE foo [     {%- include code_end.html %}
    {% include code_begin.html -%} <!ELEMENT foo ANY > {%- include code_end.html %}
    {% include code_red_begin.html -%} <!ENTITY xxe SYSTEM "file:///etc/passwd" >]> {%- include code_red_end.html %}
    {% include code_red_begin.html -%} &lt;foo&gt;&xxe;&lt;/foo&gt; {%- include code_red_end.html %}

**Escenario #2**: cambiando la línea ENTITY anterior, un atacante
escanea la red privada del servidor:<br>
    {% include code_red_begin.html -%}<!ENTITY xxe SYSTEM "https://192.168.1.1/private" >]>{%- include code_red_end.html %}

**Escenario #3**: incluyendo un archivo potencialmente infinito, un
atacante intenta un ataque de denegación de servicio:<br>
    {% include code_red_begin.html -%}<!ENTITY xxe SYSTEM "file:///dev/random" >]>{%- include code_red_end.html %}

{%- include t10_subsection.html token="references" pos="right" -%}
**OWASP**<br>
* [OWASP Application Security Verification Standard](/www-project-application-security-verification-standard)<br>
* [OWASP Testing Guide: Testing for XML Injection](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/07-Input_Validation_Testing/07-Testing_for_XML_Injection)<br>
* [OWASP XXE Vulnerability](/www-community/vulnerabilities/XML_External_Entity_(XXE)_Processing)<br>
* [OWASP Cheat Sheet: XXE Prevention](https://cheatsheetseries.owasp.org/cheatsheets/XML_External_Entity_Prevention_Cheat_Sheet.html)<br>
* [OWASP Cheat Sheet: XML Security](https://cheatsheetseries.owasp.org/cheatsheets/XML_Security_Cheat_Sheet.html)<br>
<br>
**Externos**<br>
* [CWE-611: Improper Restriction of XXE](https://cwe.mitre.org/data/definitions/611.html)<br>
* [Billion Laughs Attack](https://en.wikipedia.org/wiki/Billion_laughs_attack)<br>
* [SAML Security XML External Entity Attack](https://secretsofappsecurity.blogspot.tw/2017/01/saml-security-xml-external-entity-attack.html)<br>
* [Detecting and exploiting XXE in SAML Interfaces](https://web-in-security.blogspot.tw/2014/11/detecting-and-exploiting-xxe-in-saml.html)<br>
{% include t10_subsection_end.html %}
