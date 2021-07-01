---

document: OWASP Top Ten 2017
year: 2017
order: 15
title: A10:2017-Insufficient Logging & Monitoring
lang: en
layout: full-width-document
author:
contributors:
tags: OWASP Top Ten 2017, Top Ten, A10:2017
exploitability: 2
prevalence: 3
detectability: 1
technical: 2
redirect_from:
  - OWASP_Top_Ten_2017/Top_10-2017_A10-Insufficient_Logging%2526Monitoring.html
  - OWASP_Top_Ten_2017/Top_10-2017_A10-Insufficient_Logging%2526Monitoring
  - OWASP_Top_Ten_2017/Top_10-2017_A10-Insufficient_Logging%252526Monitoring.html
  - OWASP_Top_Ten_2017/Top_10-2017_A10-Insufficient_Logging%252526Monitoring

---

{% include risk_begin.html %}
{%- include risk_description.html pos="firstLeft" -%}

El registro y monitoreo insuficientes es la base de casi todos los grandes y
mayores incidentes de seguridad. Los atacantes dependen de la falta de
monitoreo y respuesta oportuna para lograr sus objetivos sin ser
detectados.

{%- include risk_description.html pos="mid" -%}

Este punto se incluye en el Top 10 basado en la 
[encuesta a la industria](https://owasp.blogspot.com/2017/08/owasp-top-10-2017-project-update.html).<br>
Una estrategia para determinar si usted no posee suficiente monitoreo es
examinar los registros después de las pruebas de penetración.
Las acciones de los evaluadores deben registrarse lo suficiente como para 
comprender los daños que podrían haber causado.

{%- include risk_description.html pos="right" -%}

Los ataques más exitosos comienzan con la exploración de vulnerabilidades.
Permitir que el sondeo de vulnerabilidades continúe puede
aumentar la probabilidad de una explotación exitosa. En 2016, la
identificación de brechas tardó una media de 
[191 días](https://www-01.ibm.com/common/ssi/cgi-bin/ssialias?htmlfid=SEL03130WWEN&),
un tiempo más que suficiente para inflingir daño.

{%- include risk_end.html -%}

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html token="isTheApplicationVulnerable" pos="firstLeft" -%}

El registro y monitoreo insuficientes ocurren en cualquier
momento:<br>
* Eventos auditables, tales como los inicios de sesión, fallos en
el inicio de sesión, y transacciones de alto valor no son
registrados.<br>
* Advertencias y errores generan registros poco claros,
inadecuados o ninguno en absoluto.<br>
* Los registros en aplicaciones o APIs no son monitoreados para
detectar actividades sospechosas.<br>
* Las bitácoras son almacenados únicamente de forma local.<br>
* Los umbrales de alerta y de escalamiento de respuesta no
están implementados o no son eficaces.<br>
* Las pruebas de penetración y escaneos utilizando
herramientas [DAST](/www-community/Vulnerability_Scanning_Tools)
(como [OWASP ZAP](/www-project-zap)) no generan alertas.<br>
* La aplicación no logra detectar, escalar o alertar sobre
ataques en tiempo real.<br>

También es vulnerable a la fuga de información si registra y
alerta eventos visibles para un usuario o un atacante (consulte
[A3:2017-Sensitive Data Exposure](A3_2017-Sensitive_Data_Exposure) ).

{%- include t10_subsection.html token="howToPrevent" pos="right" -%}

Según el riesgo de los datos almacenados o procesados por la
aplicación:<br>
* Asegúrese de que todos los errores de inicio de sesión, de
control de acceso y de validación de entradas de datos del lado
del servidor se pueden registrar para identificar cuentas
sospechosas. Mantenerlo durante el tiempo suficiente para
permitir un eventual análisis forense.<br>
* Asegure que las bitácoras se generan en un formato que pueda
ser consumido con facilidad por una solución centralizada de
gestión de bitácoras.<br>
* Establezca monitoreo y alerta efectivos de tal manera
que las actividades sospechosas sean detectadas y respondidas
dentro de períodos de tiempo aceptables.<br>
* Establezca o adopte un plan de respuesta o recuperación de
incidentes, tales como 
[NIST 800-61 rev 2](https://csrc.nist.gov/publications/detail/sp/800-61/rev-2/final) 
o posterior.<br>

Existen marcos de trabajo de protección de aplicaciones comerciales y de
código abierto tales como [OWASP AppSensor](/www-project-appsensor), 
cortafuegos de aplicaciones web como ModSecurity utilizando el 
[Juego de Reglas Fundamental de OWASP ModSecurity](/www-project-modsecurity-core-rule-set), 
y software de correlación de bitácoras con paneles
personalizados y alertas.<br>


{%- include t10_subsection.html token="exampleAttackScenarios" pos="left" -%}

**Escenario #1**: el software de un foro de código abierto es operado
por un pequeño equipo que fue atacado utilizando una falla de
seguridad. Los atacantes lograron eliminar el repositorio del código
fuente interno que contenía la próxima versión, y todos los
contenidos del foro. Aunque el código fuente pueda ser recuperado,
la falta de monitorización, registro y alerta condujo a una brecha de
seguridad peor.<br>

**Escenario #2**: un atacante escanea usuarios utilizando una
clave común. Pueden tomar el control de todas las cuentas
utilizando esa clave. Para todos los demás usuarios, este proceso
deja solo un registro de fallo de inicio de sesión. Luego de algunos
días, esto puede repetirse con una contraseña distinta.<br>

**Escenario #3**: De acuerdo a reportes, un importante minorista tiene
una arenera de análisis de malware interno para los archivos
adjuntos de correos electrónicos. Esta arenera había detectado
software potencialmente indeseable, pero nadie respondió a esta
detección. Se habían estado generando advertencias por algún
tiempo antes de que la brecha de seguridad fuera detectada por un
banco externo, debido a transacciones fraudulentas de tarjetas.

{%- include t10_subsection.html token="references" pos="right" -%}
**OWASP**<br>
* [OWASP Proactive Controls: Implement Logging and Monitoring](/www-project-proactive-controls/v3/en/c9-security-logging.html)<br>
* [OWASP Application Security Verification Standard: V8 Logging and Monitoring](/www-project-application-security-verification-standard)<br>
* [OWASP Testing Guide: Testing for Detailed Error Code](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/08-Testing_for_Error_Handling/01-Testing_for_Error_Code)<br>
* [OWASP Cheat Sheet: Logging](https://cheatsheetseries.owasp.org/cheatsheets/Logging_Cheat_Sheet.html)<br>
<br>
**Externos**<br>
* [CWE-223: Omission of Security-relevant Information](https://cwe.mitre.org/data/definitions/223.html)<br>
* [CWE-778: Insufficient Logging](https://cwe.mitre.org/data/definitions/778.html)
{% include t10_subsection_end.html %}
