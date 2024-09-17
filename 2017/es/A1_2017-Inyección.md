---

document: OWASP Top Ten 2017 (es)
year: 2017
order: 7
en: A1:2017-Injection
title: A1:2017-Inyección
lang: es
layout: full-width-document
author:
contributors: vtamara
tags: OWASP Top Ten 2017 (es), Top Ten, A1:2017, es
exploitability: 3
prevalence: 2
detectability: 3
technical: 3
redirect_from:
  - 2017/es/2017_A1-Injection.html

---

{% include risk_begin.html %}
{%- include risk_description.html pos="firstLeft" -%}
Casi cualquier fuente de datos puede ser un vector de inyección: variables
de entorno, parámetros, servicios web externos e internos, y todo tipo
de usuarios. Los defectos de inyección ocurren cuando un
atacante puede enviar información dañina a un intérprete. 
{%- include risk_description.html pos="mid" -%}
Estos defectos son muy comunes, particularmente en código heredado. 
Las vulnerabilidades de inyección se encuentran a menudo en consultas
SQL, NoSQL, LDAP, XPath, comandos del SO, analizadores XML, 
encabezados SMTP, lenguajes de expresión, parámetros y consultas ORM.
Los errores de inyección son fáciles de descubrir al examinar el código 
y los escáneres y fuzzers ayudan a encontrarlos.
{%- include risk_description.html pos="right" -%}
Una inyección puede causar divulgación, pérdida o corrupción de 
información, pérdida de auditabilidad, o denegación de acceso.<br>
El impacto al negocio depende de las necesidades de la aplicación y de los
datos.
{%- include risk_end.html -%}

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html token="isTheApplicationVulnerable" pos="firstLeft" -%}
Una aplicación es vulnerable a ataques de este tipo cuando:<br>
* Los datos suministrados por el usuario no son validados, filtrados
o saneados por la aplicación.<br>
* Se invocan consultas dinámicas o no parametrizadas, sin codificar
los parámetros de forma acorde al contexto.<br>
* Se utilizan datos dañinos dentro de los parámetros de búsqueda
en consultas Object-Relational Mapping (ORM), para extraer
registros adicionales sensibles.<br>
* Los datos dañinos se usan directamente o se concatenan, de
modo que el SQL o comando resultante contiene datos y
estructuras con consultas dinámicas, comandos o procedimientos
almacenados.<br>

Algunas de las inyecciones más comunes son SQL, NoSQL,
comandos de SO, Object-Relational Mapping (ORM), LDAP,
y Lenguaje de Expresiones o inyección Object Graph Navigation Library (OGNL).
El concepto es idéntico entre todos los intérpretes. La revisión del
código fuente es el mejor método para detectar si las aplicaciones son
vulnerables a inyecciones, seguido de cerca por pruebas
automatizadas de todos los parámetros, encabezados, URL, cookies,
JSON, SOAP y entradas de datos XML.
Las organizaciones pueden incluir herramientas de análisis estático
([SAST](/www-community/Source_Code_Analysis_Tools)) y pruebas dinámicas 
([DAST](/www-community/Vulnerability_Scanning_Tools)) para identificar 
errores de inyección apenas se introducen y antes del despliegue de la
aplicación en producción.

{%- include t10_subsection.html token="howToPrevent" pos="right" -%}
Para prevenir inyecciones, se requiere separar los datos de los
comandos y las consultas.<br>
* La opción preferida es utilizar una API segura, que evite el uso de
un intérprete por completo y proporcione una interfaz
parametrizada. Se debe migrar y utilizar una herramientas de
Mapeo Relacional de Objetos (ORMs).<br>
**Nota**: Incluso cuando se parametrizan, los procedimientos
almacenados pueden introducir una inyección SQL si el
procedimiento PL/SQL o T-SQL concatena consultas y datos, o se
ejecutan parámetros utilizando EXECUTE IMMEDIATE o exec().<br>
* Realice validaciones de entradas de datos en el servidor,
utilizando "listas blancas". De todos modos, esto no es una
defensa completa ya que muchas aplicaciones requieren el uso de
caracteres especiales, como en campos de texto, APIs o
aplicaciones móviles.<br>
* Para cualquier consulta dinámica residual, escape caracteres
especiales utilizando la sintaxis de caracteres específica para el
intérprete que se trate.<br>
**Nota**: Las estructuras de SQL tales como nombres de tabla, nombres de
columna, etc. no se pueden escapar y, por lo tanto, los nombres
de estructura suministrados por el usuario son peligrosos. Este es
un problema común en el software de redacción de informes.<br>
* Utilice LIMIT y otros controles SQL dentro de las consultas para
evitar la fuga masiva de registros en caso de inyección SQL.<br>

{%- include t10_subsection.html token="exampleAttackScenarios" pos="left" -%}

**Escenario #1**: la aplicación utiliza datos no confiables en la
construcción del siguiente comando SQL vulnerable:<br>
  {% include code_red_begin.html -%} String query = "SELECT * FROM accounts WHERE custID='" + request.getParameter("id") + "'"; {%- include code_red_end.html %}
**Escenario #2:** la confianza total de una aplicación en su
marco de trabajo puede resultar en consultas que aún son vulnerables
a inyección, por ejemplo, Hibernate Query Language (HQL):<br>
    {% include code_red_begin.html -%} Query HQLQuery = session.createQuery("FROM accounts WHERE custID='" + request.getParameter("id") + "'"); {%- include code_red_end.html %}

En ambos casos, al atacante puede modificar el parámetro “id”
en su navegador para enviar: ' or '1'='1. Por ejemplo:<br>
    {% include code_red_begin.html -%} http://example.com/app/accountView?id=' or '1'='1 {%- include code_red_end.html %}
<br>
Esto cambia el significado de ambas consultas, devolviendo
todos los registros de la tabla “accounts”. Ataques más
peligrosos podrían modificar los datos o incluso invocar
procedimientos almacenados.

{%- include t10_subsection.html token="references" pos="right" -%}
**OWASP**<br>
* [OWASP Proactive Controls: Secure Database Access](/www-project-proactive-controls/v3/en/c3-secure-database)<br>
* [OWASP ASVS: V5 Input Validation and Encoding](/www-project-application-security-verification-standard)<br>
* [OWASP Testing Guide: SQL Injection,](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/07-Input_Validation_Testing/05-Testing_for_SQL_Injection) [Command Injection](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/07-Input_Validation_Testing/12-Testing_for_Command_Injection), and [ORM Injection](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/07-Input_Validation_Testing/05.7-Testing_for_ORM_Injection)<br>
* [OWASP Cheat Sheet: Injection Prevention](https://cheatsheetseries.owasp.org/cheatsheets/Injection_Prevention_Cheat_Sheet.html)<br>
* [OWASP Cheat Sheet: SQL Injection Prevention](https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html)<br>
* [OWASP Cheat Sheet: Injection Prevention in Java](https://cheatsheetseries.owasp.org/cheatsheets/Injection_Prevention_Cheat_Sheet_in_Java.html)<br>
* [OWASP Cheat Sheet: Query Parameterization](https://cheatsheetseries.owasp.org/cheatsheets/Query_Parameterization_Cheat_Sheet.html)<br>
* [OWASP Automated Threats to Web Applications – OAT-014](/www-project-automated-threats-to-web-applications/)<br>
<br>
**Externos**<br>
* [CWE-77: Command Injection](https://cwe.mitre.org/data/definitions/77.html)<br>
* [CWE-89: SQL Injection](https://cwe.mitre.org/data/definitions/89.html)<br>
* [CWE-564: Hibernate Injection](https://cwe.mitre.org/data/definitions/564.html)<br>
* [CWE-917: Expression Language Injection](https://cwe.mitre.org/data/definitions/917.html)<br>
* [PortSwigger: Server-side template injection](https://portswigger.net/kb/issues/00101080_serversidetemplateinjection)
{% include t10_subsection_end.html %}
