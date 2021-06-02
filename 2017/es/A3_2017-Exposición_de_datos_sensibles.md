---

document: OWASP Top Ten 2017 (es)
year: 2017
order: 9
en: A3:2017-Sensitive Data Exposure
title: A3:2017-Exposición de datos sensibles
lang: es
layout: full-width-document
author:
contributors: vtamara
tags: OWASP Top Ten 2017 (es), Top Ten, A3:2017, es
exploitability: 2
prevalence: 3
detectability: 2
technical: 3
redirect_from:
  - 2017/es/A3-Sensitive_Data_Exposure.html

---

{% include risk_begin.html %}
{%- include risk_description.html pos="firstLeft" -%}

En lugar de atacar la criptografía, los atacantes roban claves, ejecutan
ataques de Hombre en el Medio (Man in the Middle) o roban datos en texto
plano del servidor, en tránsito, o desde el cliente.
Se requiere un ataque manual pero pueden utilizase bases de datos con
hashes que han sido hechas públicas para obtener las contraseñas originales
utilizando GPUs.
{%- include risk_description.html pos="mid" -%}
En los últimos años, este ha sido el ataque de mayor impacto. 
El error más común es simplemente no cifrar los datos sensibles. 
Cuando se emplea criptografía, es común la generación y gestión de claves, 
algoritmos, cifradores y protocolos débiles. En particular algoritmos
de resumen débiles para el almacenamiento de
contraseñas. Para los datos en tránsito las debilidades
son fáciles de detectar, mientras que para los datos
almacenados es muy difícil. Ambos tienen una
explotabilidad muy variable

{%- include risk_description.html pos="right" -%}

Los fallos con frecuencia comprometen datos que deberían estar protegidos.
Típicamente, esta información incluye Información Personal Sensible (PII)
como registros de salud, datos personales, credenciales y tarjetas de
crédito, que a menudo requieren mayor protección, según lo definido por las
leyes o reglamentos como el PIBR de la UE o las leyes locales de privacidad.

{%- include risk_end.html -%}

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html token="isTheApplicationVulnerable" pos="firstLeft" -%}
Lo primero es determinar las necesidades de protección de los datos
en tránsito y en almacenamiento. Por ejemplo, contraseñas, números
de tarjetas de crédito, registros médicos, información personal y datos
sensibles del negocio requieren protección adicional, especialmente si
se encuentran en el ámbito de aplicación de leyes de privacidad,
como por ejemplo el Reglamento General de Protección de Datos
(RGPD) o regulaciones financieras, como PCI Data Security Standard
(PCI DSS). Para todos estos datos:<br>

* ¿Se transmite datos en texto claro? Esto se refiere a protocolos
como HTTP, SMTP, TELNET, FTP. El tráfico en Internet es
especialmente peligroso. Verifique también todo el tráfico interno,
por ejemplo, entre los balanceadores de carga, servidores web o
sistemas de backend.<br>
* ¿Se utilizan algoritmos criptográficos obsoletos o débiles, ya sea
por defecto o en código heredado? Por ejemplo MD5, SHA1, etc.<br>
* ¿Se utilizan claves criptográficas predeterminadas, se generan o
reutilizan claves criptográficas débiles, o falta una gestión o
rotación adecuada de las claves?<br>
* Por defecto, ¿se aplica cifrado? ¿se han establecido las directivas
de seguridad o encabezados para el navegador web?<br>
* ¿El User-Agent del usuario (aplicación o cliente de correo), verifica
que el certificado enviado por el servidor sea válido?<br>

Véase también [criptografía en el almacenamiento (V7), protección de datos (V9) y seguridad de la comunicaciones (V10) del ASVS](/www-project-application-security-verification-standard).<br>

{%- include t10_subsection.html token="howToPrevent" pos="right" -%}
Como mínimo, siga las siguientes recomendaciones y consulte las
referencias:<br>
* Clasifique los datos procesados, almacenados o transmitidos por
  el sistema. Identifique qué información es sensible de acuerdo a
  las regulaciones, leyes o requisitos del negocio y del país.<br>
* Aplique los controles adecuados para cada clasificación.<br>
* No almacene datos sensibles innecesariamente. Descártelos tan
  pronto como sea posible o utilice un sistema de tokenizacion que
  cumpla con PCI DSS. Los datos que no se almacenan no pueden
  ser robados.<br>
* Cifre todos los datos sensibles cuando sean almacenados.<br>
* Cifre todos los datos en tránsito utilizando protocolos seguros
  como TLS con cifradores que utilicen Perfect Forward Secrecy
  (PFS), priorizando los algoritmos en el servidor. Aplique el cifrado
  utilizando directivas como HTTP Strict Transport Security 
  ([HSTS](https://cheatsheetseries.owasp.org/cheatsheets/HTTP_Strict_Transport_Security_Cheat_Sheet.html)).<br>
* Utilice únicamente algoritmos y protocolos estándares y fuertes e
  implemente una gestión adecuada de claves. No cree sus propios
  algoritmos de cifrado.<br>
* Deshabilite el almacenamiento en cache de datos sensibles.<br>
* Almacene contraseñas utilizando funciones de hashing adaptables
  con un factor de trabajo (retraso) además de SALT, como 
  [Argon2](https://www.cryptolux.org/index.php/Argon2),
  [scrypt](https://wikipedia.org/wiki/Scrypt), 
  [bcrypt](https://wikipedia.org/wiki/Bcrypt) o 
  [PBKDF2](https://wikipedia.org/wiki/PBKDF2).<br>
• Verifique la efectividad de sus configuraciones y parámetros de
  forma independiente.<br>
{%- include t10_subsection.html token="exampleAttackScenarios" pos="left" -%}

**Escenario #1**: una aplicación cifra números de tarjetas de crédito
  en una base de datos utilizando su cifrado automático. Sin
  embargo, estos datos son automáticamente descifrados al ser
  consultados, permitiendo que, si existe un error de inyección SQL
  se obtengan los números de tarjetas de crédito en texto plano.<br>

**Escenario #2**: un sitio web no utiliza o fuerza el uso de TLS para
  todas las páginas, o utiliza cifradores débiles. Un atacante
  monitorea el tráfico de la red (por ejemplo en una red Wi-Fi
  insegura), degrada la conexión de HTTPS a HTTP e intercepta los
  datos, robando las cookies de sesión del usuario. El atacante
  reutiliza estas cookies y secuestra la sesión del usuario (ya
  autenticado), accediendo o modificando datos privados. También
  podría alterar los datos enviados.<br>

**Escenario #3**: se utilizan hashes simples o hashes sin SALT para
  almacenar las contraseñas de los usuarios en una base de datos.
  Una falla en la carga de archivos permite a un atacante obtener
  las contraseñas. Utilizando una Rainbow Table de valores precalculados, 
  se pueden recuperar las contraseñas originales.<br>

{%- include t10_subsection.html token="references" pos="right" -%}
**OWASP**<br>
* [OWASP Proactive Controls: Protect Data Everywhere](/www-project-proactive-controls/v3/en/c8-protect-data-everywhere)<br>
* [OWASP Application Security Verification Standard (V7, 9, 10)](/www-project-application-security-verification-standard)<br>
* [OWASP Cheat Sheet: Transport Layer Protection](https://cheatsheetseries.owasp.org/cheatsheets/Transport_Layer_Protection_Cheat_Sheet.html)<br>
* [OWASP Cheat Sheet: User Privacy Protection](https://cheatsheetseries.owasp.org/cheatsheets/User_Privacy_Protection_Cheat_Sheet.html)<br>
* [OWASP Cheat Sheet: Password and Cryptographic Storage](https://cheatsheetseries.owasp.org/cheatsheets/Password_Storage_Cheat_Sheet.html)<br>
* [OWASP Cheat Sheet: HSTS](https://cheatsheetseries.owasp.org/cheatsheets/HTTP_Strict_Transport_Security_Cheat_Sheet.html)<br>
* [OWASP Testing Guide: Testing for weak cryptography](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/09-Testing_for_Weak_Cryptography/README)<br>
<br>
**Externos**<br>
* [CWE-202: Exposure of sens. information through data queries](https://cwe.mitre.org/data/definitions/202.html)<br>
* [CWE-310: Cryptographic Issues](https://cwe.mitre.org/data/definitions/310.html)<br>
* [CWE-311: Missing Encryption](https://cwe.mitre.org/data/definitions/311.html)<br>
* [CWE-312: Cleartext Storage of Sensitive Information](https://cwe.mitre.org/data/definitions/312.html)<br>
* [CWE-319: Cleartext Transmission of Sensitive Information](https://cwe.mitre.org/data/definitions/319.html)<br>
* [CWE-326: Weak Encryption](https://cwe.mitre.org/data/definitions/326.html)<br>
* [CWE-327: Broken/Risky Crypto](https://cwe.mitre.org/data/definitions/327.html)<br>
* [CWE-359: Exposure of Private Information (Privacy Violation)](https://cwe.mitre.org/data/definitions/359.html)
{% include t10_subsection_end.html %}
