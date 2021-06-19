---

document: OWASP Top Ten 2017 (es)
year: 2017
order: 12
en: A6:2017-Security Misconfiguration
title: A6:2017-Configuración de Seguridad incorrecta
lang: es
layout: full-width-document
author:
contributors: vtamara
tags: OWASP Top Ten 2017 (es), Top Ten, A6:2017, es
exploitability: 3
prevalence: 3
detectability: 3
technical: 2
redirect_from:
  - 2017/es/A6-Security_Misconfiguration

---

{% include risk_begin.html %}
{%- include risk_description.html pos="firstLeft" -%}

Los atacantes a menudo intentarán explotar vulnerabilidades sin parchear
o acceder a cuentas por defecto, páginas no utilizadas, archivos y
directorios desprotegidos, etc. para obtener acceso o conocimiento del
sistema o del negocio.

{%- include risk_description.html pos="mid" -%}

Las configuraciones incorrectas de seguridad pueden ocurrir en cualquier 
nivel de la pila tecnológica, incluidos los servicios de red, 
la plataforma, el servidor web, el servidor de aplicaciones, 
la base de datos, marcos de trabajo, el código personalizado y máquinas
virtuales preinstaladas, contenedores, etc. 
Los escáneres automatizados son útiles para detectar configuraciones 
erróneas, el uso de cuentas o configuraciones predeterminadas, 
servicios innecesarios, opciones heredadas, etc

{%- include risk_description.html pos="right" -%}

Los defectos frecuentemente dan a los atacantes acceso no autorizado a
algunos datos o funciones del sistema.
Ocasionalmente, estos errores resultan en un completo compromiso
del sistema. 
El impacto al negocio depende de las necesidades de la aplicación y de los
datos.

{%- include risk_end.html -%}

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html token="isTheApplicationVulnerable" pos="firstLeft" -%}

La aplicación puede ser vulnerable si:<br>
* Falta protección adecuada en cualquier parte de la pila
tecnológica, o si quedan permisos mal configurados en los servicios de la
nube.<br>
* Se encuentran instaladas o habilitadas características
innecesarias (ej. puertos, servicios, páginas, cuentas o permisos).<br>
* Las cuentas predeterminadas y sus contraseñas siguen activas y
sin cambios.<br>
* El manejo de errores revela a los usuarios trazas de la aplicación
u otros mensajes demasiado informativos.<br>
* Para los sistemas actualizados, las nuevas funciones de
seguridad se encuentran desactivadas o no se encuentran
configuradas de forma adecuada o segura.<br>
* Las configuraciones de seguridad en el servidor de aplicaciones,
en el marco de trabajo de aplicación (ej., Struts, Spring, ASP.NET),
bibliotecas o bases de datos no se encuentran especificados con
valores seguros.<br>
* El servidor no envía directrices o cabeceras de seguridad a los
clientes o se encuentran configurados con valores inseguros.<br>
* El software se encuentra desactualizado o posee vulnerabilidades
(ver [A9: 2017 Uso de componentes con vulnerabilidades conocidas](A9_2017-Uso_de_componentes_con_vulnerabilidades_conocidas)).<br>

Sin un proceso de configuración de seguridad de aplicación
concertado y repetible, los sistemas corren un mayor riesgo.

{%- include t10_subsection.html token="howToPrevent" pos="right" -%}

Deben implementarse procesos seguros de instalación, incluyendo:<br>
* Un proceso de fortalecimiento reproducible que agilice y facilite la
implementación de otro entorno asegurado. Los entornos de
desarrollo, de control de calidad (QA) y de Producción deben
configurarse de manera idéntica y con diferentes credenciales
para cada entorno. Este proceso puede automatizarse para
minimizar el esfuerzo requerido para configurar cada nuevo
entorno seguro. <br> 
* Use una plataforma minimalista sin funcionalidades
innecesarias, componentes, documentación o ejemplos. Elimine
o no instale marcos de trabajo y funcionalidades no utilizadas.<br>
* Siga un proceso para revisar y actualizar las configuraciones
apropiadas de acuerdo a las advertencias de seguridad y siga
un proceso de gestión de parches (Ver [A9: 2017 Uso de componentes con vulnerabilidades conocidas](A9_2017-Uso_de_componentes_con_vulnerabilidades_conocidas)).
En particular, revise los permisos de almacenamiento en la nube (por ejemplo, 
los permisos de buckets S3).<br>
* La aplicación debe tener una arquitectura segmentada que
proporcione una separación efectiva y segura entre
componentes y acceso a terceros, contenedores o grupos de
seguridad en la nube (ACLs).<br>
* Envíe directivas de seguridad a los clientes (por ej. [cabeceras de seguridad](/www-project-secure-headers)).<br>
* Utilice un proceso automatizado para verificar la efectividad de
los ajustes y configuraciones en todos los ambientes.<br>

{%- include t10_subsection.html token="exampleAttackScenarios" pos="left" -%}
**Escenario #1**: oceso automatizado para verificar la efectividad de
los ajustes y configuraciones en todos los ambientes.<br>

{%- include t10_subsection.html token="exampleAttackScenarios" pos="left" -%}
**Escenario #1**:  el servidor de aplicaciones viene con ejemplos que
no se eliminan del ambiente de producción. Estas aplicaciones
poseen defectos de seguridad conocidos que los atacantes usan
para comprometer el servidor. Si una de estas aplicaciones es la
consola de administración, y las cuentas predeterminadas no se han
cambiado, el atacante puede iniciar una sesión<<br>

**Escenario #2**: el listado de directorios se encuentra activado en el
servidor y un atacante descubre que puede listar los archivos. El
atacante encuentra y descarga las clases de Java compiladas, las
descompila, realiza ingeniería inversa y encuentra un defecto en el
control de acceso de la aplicación.<br>

**Escenario #3**: la configuración del servidor de aplicaciones permite
retornar mensajes de error detallados a los usuarios, por ejemplo,
las trazas de pila. Potencialmente esto expone información sensible
o fallas subyacentes, tales como versiones de componentes que se
sabe que son vulnerables. <br>

**Escenario #4**: un proveedor de servicios en la nube (PSN o _CSP_) por
defecto permite a otros usuarios del CSP acceder a sus archivos
desde Internet. Esto permite el acceso a datos sensibles
almacenados en la nube.<br>

{%- include t10_subsection.html token="references" pos="right" -%}
**OWASP**<br>
* [OWASP Testing Guide: Configuration Management](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/02-Configuration_and_Deployment_Management_Testing/README)<br>
* [OWASP Testing Guide: Testing for Error Codes](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/08-Testing_for_Error_Handling/01-Testing_for_Error_Code)<br>
For additional requirements in this area, see the [Application Security Verification Standard V19 Configuration](/www-project-application-security-verification-standard).<br>
<br>
**Externos**<br>
* [NIST Guide to General Server Hardening](https://csrc.nist.gov/publications/detail/sp/800-123/final)<br>
* [CWE-2: Environmental Security Flaws](https://cwe.mitre.org/data/definitions/2.html)<br>
* [CWE-16: Configuration](https://cwe.mitre.org/data/definitions/16.html)<br>
* [CWE-388: Error Handling](https://cwe.mitre.org/data/definitions/388.html)<br>
* [CIS Security Configuration Guides/Benchmarks](https://www.cisecurity.org/cis-benchmarks/)<br>
* [Amazon S3 Bucket Discovery and Enumeration](https://blog.websecurify.com/2017/10/aws-s3-bucket-discovery.html)<br>
{% include t10_subsection_end.html %}
