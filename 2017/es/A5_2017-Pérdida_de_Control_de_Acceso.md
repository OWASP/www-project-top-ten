---

document: OWASP Top Ten 2017 (es)
year: 2017
order: 11
en: A5:2017-Broken Access Control
title: A5:2017-Pérdida de Control de Acceso
lang: es
layout: full-width-document
author:
contributors: vtamara
tags: OWASP Top Ten 2017 (es), Top Ten, A5:2017, es
exploitability: 2
prevalence: 2
detectability: 2
technical: 3
redirect_from:
  - 2017/es/A5-Broken_Access_Control

---

{% include risk_begin.html %}
{%- include risk_description.html pos="firstLeft" -%}

La explotación del control de acceso es una habilidad esencial de los atacantes.
Las herramientas [SAST](/www-community/Source_Code_Analysis_Tools) y 
[DAST](/www-community/Vulnerability_Scanning_Tools) pueden detectar 
la ausencia de controles de acceso pero, en el caso de estar presentes, 
no pueden verificar si son correctos. 
Es detectable utilizando medios manuales o de forma
automática en algunos marcos de trabajo que carecen de controles de acceso.

{%- include risk_description.html pos="mid" -%} 

Las debilidades del control de acceso son comunes debido a la falta de 
detección automática y a la falta de pruebas funcionales efectivas por 
parte de los desarrolladores de aplicaciones.<br>

La detección de fallas en el control de acceso no suele ser cubierto por 
pruebas automatizadas, ni estáticas ni dinámicas.

{%- include risk_description.html pos="right" -%}
El impacto técnico incluye atacantes anónimos actuando como usuarios o
administradores; usuarios que utilizan funciones privilegiadas o crean,
acceden, actualizan o eliminan cualquier registro.<br>

El impacto al negocio depende de las necesidades de la aplicación y de los
datos.

{%- include risk_end.html -%}

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html token="isTheApplicationVulnerable" pos="firstLeft" -%}
Las restricciones de control de acceso implican que los usuarios no
puedan actuar fuera de los permisos previstos. Típicamente, las
fallas conducen a la divulgación, modificación o destrucción de
información no autorizada, o a la ejecución una función de
negocio fuera de los límites del usuario.<br>

Las vulnerabilidades comunes de control de acceso incluyen:<br>
* Sobrepasar las comprobaciones de control de acceso
modificando la URL, el estado interno de la aplicación o HTML,
utilizando una herramienta de ataque o una conexión vía API.<br>
* Permitir que la clave primaria se cambie a la de otro usuario,
pudiendo ver o editar la cuenta de otra persona.<br>
* Elevación de privilegios. Actuar como un usuario sin iniciar
sesión, o actuar como un administrador habiendo iniciado sesión
como usuario estándar.<br>
* Manipulación de metadatos, como reproducir un token de control
de acceso JWT (JSON Web Token), manipular una cookie o un
campo oculto para elevar los privilegios, o abusar de la
invalidación de tokens JWT.<br>
* La configuración incorrecta de CORS permite el acceso no
autorizado a una API.<br>
* Forzar la navegación a páginas autenticadas como un usuario no
autenticado o a páginas privilegiadas como usuario estándar.
Acceder a una API sin control de acceso mediante el uso de
verbos POST, PUT y DELETE.<br>


{%- include t10_subsection.html token="howToPrevent" pos="right" -%}

El control de acceso sólo es efectivo si es aplicado del lado del
servidor o en una API sin servidor, donde el atacante no puede modificar
la verificación de control de acceso o los metadatos.<br>

* Con la excepción de los recursos públicos, la política debe ser
denegar de forma predeterminada.<br>
* Implemente los mecanismos de control de acceso una vez y
reutilícelo en toda la aplicación, esto incluye minimizar el control
de acceso HTTP (CORS).<br>
* Los controles de acceso al modelo deben imponer la propiedad
(del dueño) de los registros, en lugar de aceptar que el usuario puede
crear, leer, actualizar o eliminar cualquier registro.<br>
* Los modelos de dominio deben hacer cumplir los requisitos
exclusivos de los límites de negocio de las aplicaciones.<br>
* Deshabilite el listado de directorios del servidor web y asegúrese
que los metadatos/fuentes de archivos (por ejemplo de GIT) y
copia de seguridad no estén presentes en las carpetas públicas.<br>
* Registre en bitácoras errores de control de acceso y alerte a los
administradores cuando corresponda (por ej. fallas reiteradas).<br>
* Limite la tasa de acceso a las APIs para minimizar el daño de
herramientas de ataque automatizadas.<br>
* Los tokens JWT deben ser invalidados luego de la finalización de
la sesión por parte del usuario.<br>
* Los desarrolladores y el personal de QA deben incluir pruebas de
control de acceso en sus pruebas unitarias y de integración.<br>

{%- include t10_subsection.html token="exampleAttackScenarios" pos="left" -%}


**Escenario #1**: La aplicación utiliza datos no validados en una
llamada SQL para acceder a información de una cuenta: <br>
    {% include code_red_begin.html -%} pstmt.setString(1, request.getParameter("acct")); {%- include code_red_end.html %}
    {% include code_red_begin.html -%} ResultSet results = pstmt.executeQuery( ); {%- include code_red_end.html %}

Un atacante simplemente puede modificar el 
parámetro 'acct' en el navegador y enviar el número de cuenta que desee. 
Si no se verifica correctamente, el atacante puede acceder a la cuenta de
cualquier usuario: <br>
    {% include code_red_begin.html -%} http://example.com/app/accountInfo?acct=notmyacct {%- include code_red_end.html %}

**Escenario #2**: Un atacante fuerza las búsquedas en las URL. 
  Los privilegios de administrador son necesarios para acceder a la 
  página de administración:<br>
    {% include code_red_begin.html -%} http://example.com/app/getappInfo {%- include code_red_end.html %}
    {% include code_red_begin.html -%} http://example.com/app/admin_getappInfo {%- include code_red_end.html %}

Si un usuario no autenticado puede acceder a cualquier página
o, si un usuario no-administrador puede acceder a la página de
administración, esto es una falla.

{%- include t10_subsection.html token="references" pos="right" -%}
**OWASP**<br>
* [OWASP Proactive Controls: Enforce Access Controls](/www-project-proactive-controls/v3/en/c7-enforce-access-controls)<br>
* [OWASP Application Security Verification Standard: V4 Access Control](/www-project-application-security-verification-standard)<br>
* [OWASP Testing Guide: Authorization Testing](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/05-Authorization_Testing/README)<br>
* [OWASP Cheat Sheet: Access Control](https://cheatsheetseries.owasp.org/cheatsheets/Access_Control_Cheat_Sheet.html)<br>
<br>
**Externos**<br>
* [CWE-22: Improper Limitation of a Pathname to a Restricted Directory ('Path Traversal')](https://cwe.mitre.org/data/definitions/22.html)<br>
* [CWE-284: Improper Access Control (Authorization)](https://cwe.mitre.org/data/definitions/284.html)<br>
* [CWE-285: Improper Authorization](https://cwe.mitre.org/data/definitions/285.html)<br>
* [CWE-639: Authorization Bypass Through User-Controlled Key](https://cwe.mitre.org/data/definitions/639.html)<br>
* [PortSwigger: Exploiting CORS misconfiguration](https://portswigger.net/blog/exploiting-cors-misconfigurations-for-bitcoins-and-bounties)
{% include t10_subsection_end.html %}
