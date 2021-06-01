---

document: OWASP Top Ten 2017 (es)
year: 2017
en: A2:2017-Broken Authentication
title: A2:2017-Pérdida de Autenticación
order: 8
lang: es
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017 (es), Top Ten, A2:2017
exploitability: 3
prevalence: 2
detectability: 2
technical: 3
redirect_from:
  - 2017/es/A2-Broken_Authentication

---

{% include risk_begin.html %}
{%- include risk_description.html pos="firstLeft" -%}
Los atacantes tienen acceso a millones de combinaciones de pares de usuario
y contraseña conocidas (debido a fugas de información), además de
cuentas administrativas por defecto. Pueden realizar ataques mediante
herramientas de fuerza bruta o diccionarios para romper los
condensados (hashes) de las contraseñas.
Los ataques al manejo de la sesión, son bien entendidos, en particular
respecto a la relación con los testigos de sesión no expirados.

{%- include risk_description.html pos="mid" -%}

Los errores de pérdida de autenticación son comunes debido al diseño y
la implementación de la mayoría de los controles de acceso. La gestión
de sesiones es la piedra angular de los controles de autenticación y
está presente en las aplicaciones. Los atacantes pueden detectar la
autenticación defectuosa utilizando medios manuales y explotarlos
utilizando herramientas automatizadas con listas de contraseñas
y ataques de diccionario.

{%- include risk_description.html pos="right" -%}

Los atacantes solo tienen que obtener el acceso a unas pocas cuentas
o a una cuenta de administrador para comprometer el sistema.
Dependiendo del dominio de la aplicación, esto puedo permitir lavado
de dinero, robo de identidad o la divulgación de información
altamente sensible protegida legalmente.

{%- include risk_end.html -%}

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html token="isTheApplicationVulnerable" pos="firstLeft" -%}

La confirmación de la identidad y la gestión de la sesión del usuario
son fundamentales para protegerse contra ataques relacionados con la
autenticación.

Pueden existir debilidades de autenticación si la aplicación:<br>
* Permite ataques automatizados como la
[reutilización de credenciales robadas](/www-community/attacks/Credential_stuffing),
cuando el atacante ya posee una lista de pares de usuario y contraseña
válidos.<br>
* Permite ataques de fuerza bruta y/o ataques automatizados.<br>
* Permite contraseñas por defecto, débiles o muy conocidas, como “Password1”,
 “Contraseña1”o “admin/admin”.<br>
* Posee procesos débiles o inefectivos para la recuperación de credenciales,
  tales como “respuestas basadas en el conocimiento”, que no puedan
  implementarse de manera segura.<br>
* Almacena las contraseñas en texto claro o cifradas o con
  condensados (**hashing**) de claves débiles (vea
  [A3:2017-Exposición de Datos Sensibles](A3_2017-Exposición_de_datos_sensibles)).<br>
* No posee autenticación multi-factor o fue implementada de forma
  ineficaz.<br>
* Expone IDs de la sesión en las URL (e.g reescritura de URL).<br>
* No rota la ID de la sesión tras el inicio de una sesión.<br>
* No invalida correctamente la ID de la sesión.  La sesión del usuario o
  los testigos de autenticación (en particular los testigos de un soló
  inicio --single sign-on - SSO) no son invalidados satisfactoriamente
  al cierre de sesión o tras un periodo de tiempo determinado de
  inactividad.<br>


{%- include t10_subsection.html token="howToPrevent" pos="right" -%}

* Implemente autenticación multi-factor para evitar ataques automatizados,
  de fuerza bruta o reúso de credenciales robadas.<br>
* No despliegue con credenciales por defecto en su software, particularmente
  en el caso de administradores.<br>
* Implemente controles contra contraseñas débiles. Cuando el usuario
  ingrese una nueva clave, la misma puede verificarse contra la lista del
  [top 10.000 de peores contraseñas](https://github.com/danielmiessler/SecLists/tree/master/Passwords).<br>
* Alinee las políticas de longitud, complejidad y rotación de contraseñas
  con las
  [recomendaciones de la Sección 5.1.1 para Secretos Memorizados de la Guía NIST 800-63 B](https://pages.nist.gov/800-63-3/sp800-63b.html#memsecret)
  u otras políticas de contraseñas modernas, basadas en evidencias.<br>
* Mediante la utilización de los mensajes genéricos iguales en todas las
  salidas, asegúrese que el registro, la recuperación de credenciales y las
  rutas de la API haga más difíciles los ataques de enumeración de
  usuarios.<br>
* Limite o incremente el tiempo frente a intentos fallido de inicio de
  sesión. Registre en bitácoras todos los fallos y alerte a los
  administradores cuando se detecten ataques de fuerza bruta, reutilización
  de contraseñas u otros ataques.<br>
* Utilice un gestor de sesión en el servidor, integrado, seguro y que
  genere un nuevo ID de sesión aleatorio con alta entropía después del
  inicio de sesión. El ID de sesión no debe incluirse en la URL, debe
  almacenarse de forma segura y debe ser invalidado después del cierre
  de sesión o de un tiempo de inactividad, y de un tiempo absoluto.

{%- include t10_subsection.html token="exampleAttackScenarios" pos="left" -%}

**Escenario #1**: la [reutilización de credenciales robadas](/www-community/attacks/Credential_stuffing),
  y el uso de [listas de contraseñas conocidas](https://github.com/danielmiessler/SecLists)
  son ataques comunes.
  Si una aplicación no implementa protecciones frente a
  amenazadas automatizadas o frente a la reutilización de credenciales
  robadas, la aplicación podría ser usada como oráculo de
  contraseñas para determinar si unas credenciales son válidas.<br>

**Escenario #2**: la mayoría de los ataques de autenticación ocurren debido
  al uso continuado de contraseñas como único factor. Las que una vez se
  consideraron mejores prácticas, como rotación de claves y requerimientos
  de complejidad, se ven como motivadoras para que los usuarios usen y
  reusen, claves débiles.   Se recomienda a las organizaciones detener
  el uso de tales prácticas y según el NIST 800-63 usar
  autenticación multi-factor.<br>

**Escenario #3**:los tiempos de vida de las sesiones de aplicación no están
  configurados correctamente. Un usuario utiliza una computadora pública
  para acceder a una aplicación. En lugar de seleccionar “Cerrar sesión”,
  el usuario simplemente cierra la pestaña del navegador y se aleja.
  Un atacante usa el mismo navegador una hora más tarde, la sesión continúa
  activa y el usuario se encuentra autenticado.

{%- include t10_subsection.html token="references" pos="right" -%}
**OWASP**<br>
* [OWASP Proactive Controls: Implement Digital Identity](/www-project-proactive-controls/v3/en/c6-digital-identity)<br>
* [OWASP Application Security Verification Standard: V2 Authentication](/www-project-application-security-verification-standard)<br>
* [OWASP Application Security Verification Standard: V3 Session Management](/www-project-application-security-verification-standard)<br>
* [OWASP Testing Guide: Identity,](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/03-Identity_Management_Testing/README) [Authentication](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/04-Authentication_Testing/README)<br>
* [OWASP Cheat Sheet: Authentication](https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html)<br>
* [OWASP Cheat Sheet: Credential Stuffing](https://cheatsheetseries.owasp.org/cheatsheets/Credential_Stuffing_Prevention_Cheat_Sheet.html)<br>
* [OWASP Cheat Sheet: Forgot Password](https://cheatsheetseries.owasp.org/cheatsheets/Forgot_Password_Cheat_Sheet.html)<br>
* [OWASP Cheat Sheet: Session Management](https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html)<br>
* [OWASP Automated Threats Handbook](/www-project-automated-threats-to-web-applications/)<br>
<br>
**Externos**<br>
* [NIST 800-63b: 5.1.1 Memorized Secrets](https://pages.nist.gov/800-63-3/sp800-63b.html#memsecret)<br>
* [CWE-287: Improper Authentication](https://cwe.mitre.org/data/definitions/287.html)<br>
* [CWE-384: Session Fixation](https://cwe.mitre.org/data/definitions/384.html)
{% include t10_subsection_end.html %}
