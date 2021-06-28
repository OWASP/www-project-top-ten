---

document: OWASP Top Ten 2017 (es)
year: 2017
order: 15
en: A9:2017-Using Components with Known Vulnerabilities
title: A9:2017-Uso de Componentes con vulnerabilidades conocidas
lang: es
layout: full-width-document
author:
contributors: vtamara
tags: OWASP Top Ten 2017 (es), Top Ten, A9:2017, es
exploitability: 2
prevalence: 3
detectability: 2
technical: 2
redirect_from:
  - 2017/es/A9-Using_Components_with_Known_Vulnerabilities

---

{% include risk_begin.html %}
{%- include risk_description.html pos="firstLeft" -%}

Es sencillo obtener exploits para vulnerabilidades ya conocidas pero la
explotación de otras requieren un esfuerzo considerable, para su
desarrollo y/o personalización.

{%- include risk_description.html pos="mid" -%}

Este tipo de defecto está muy difundidos. El desarrollo
fuertemente basado en componentes de terceros, puede llevar a que los 
desarrolladores no entiendan qué componentes se utilizan en la 
aplicación o API y, mucho menos, mantenerlos actualizados. <br>
Algunos analizadores como [retire.js](https://retirejs.github.io/retire.js/) 
ayudan en la detección, pero para determinar explotabilidad se requiere 
esfuerzo adicional. 

{%- include risk_description.html pos="right" -%}

Mientras que ciertas vulnerabilidades conocidas conllevan impactos
menores, algunas de las mayores brechas registradas han sido
realizadas explotando vulnerabilidades conocidas en componentes comunes.<br>

Dependiendo del activo que esté protegiendo, este riesgo podría incluso
estar de primero en la lista.

{%- include risk_end.html -%}

{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html token="isTheApplicationVulnerable" pos="firstLeft" -%}

Es potencialmente vulnerable si:<br>
* No conoce las versiones de todos los componentes que utiliza
(tanto del lado del cliente como del servidor). Esto incluye
componentes utilizados directamente como sus dependencias
anidadas.<br>
* El software es vulnerable, no posee soporte o se encuentra
desactualizado. Esto incluye el sistema operativo, servidor
web o de aplicaciones, DBMS, APIs y todos los componentes,
ambientes de ejecución y bibliotecas.<br>
* No analizan los componentes periódicamente ni realiza
seguimiento de los boletines de seguridad de los componentes
utilizados.<br>
* No parchea o actualiza la plataforma subyacente,
marcos de trabajo ni dependencias, con un enfoque basado en
riesgos. Esto sucede comúnmente en ambientes en los cuales
la aplicación de parches se realiza de forma mensual o
trimestral bajo control de cambios, lo que deja a la
organización abierta innecesariamente a varios días o meses
de exposición a vulnerabilidades ya solucionadas.<br>
* Si los desarrolladores no prueban la compatibilidad de
bibliotecas parchadas, renovadas o actualizadas.
* No asegura la configuración de los componentes
correctamente (vea 
[A6:2017-Configuración de Seguridad Incorrecta](A6_2017-Security_Misconfiguration)).


{%- include t10_subsection.html token="howToPrevent" pos="right" -%}

Debe haber un proceso para gestión de parches instalado para:<br>
* Remover dependencias, funcionalidades, componentes,
archivos y documentación innecesaria y no utilizada.<br>
* Utilizar una herramienta para mantener un inventario de
versiones de componentes (por ej. marcos de trabajo o bibliotecas)
tanto del cliente como del servidor. Por ejemplo
[versions](http://www.mojohaus.org/versions-maven-plugin/), 
[DependencyCheck](/www-project-dependency-check), 
[retire.js](https://github.com/retirejs/retire.js/), etc. 
Monitorear continuamente fuentes como [CVE](https://cve.mitre.org/) y 
[NVD](https://nvd.nist.gov/) en busca de vulnerabilidades en los componentes.
Usar herramientas de composición de software para automatizar el proceso.
Suscribirse a alertas de correo sobre vulnerabilidades de seguridad 
relacionadas con los componentes que usa.<br>
* Obtener componentes únicamente de orígenes oficiales
utilizando canales seguros. Utilizar preferentemente paquetes
firmados con el fin de reducir las probabilidades de uso de
versiones manipuladas maliciosamente.<br>
* Monitorear bibliotecas y componentes sin
mantenimiento o que no liberan parches de seguridad para sus
versiones antiguas. Si el parcheo no es posible,
considere desplegar un [virtual patch](/www-community/Virtual_Patching_Best_Practices) 
para monitorear, detectar o protegerse contra la debilidad detectada.<br>

Cada organización debe asegurar la existencia de un plan para
monitorear, evaluar y aplicar actualizaciones o cambios de
configuraciones durante el ciclo de vida de las aplicaciones o el portafolio.

{%- include t10_subsection.html token="exampleAttackScenarios" pos="left" -%}
**Escenario #1**: típicamente, los componentes se ejecutan con
los mismos privilegios de la aplicación que los contienen y, como
consecuencia, las fallas en éstos pueden resultar en impactos
serios. Estas fallas pueden ser accidentales (por ejemplo,
errores de codificación) o intencionales (una puerta trasera en
un componente). Algunos ejemplos de vulnerabilidades en
componentes explotables son:<br>
* [CVE-2017-5638](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-5638),
 una ejecución remota de código en Struts 2 que ha sido culpada de grandes 
brechas de datos.<br>
* Aunque frecuentemente los dispositivos [internet of things (IoT)](https://en.wikipedia.org/wiki/Internet_of_things) 
son imposibles o muy difíciles de actualizar,
la importancia de éstas actualizaciones puede ser enorme
(por ejemplo en dispositivos biomédicos).<br>

Existen herramientas automatizadas que ayudan a los atacantes a
descubrir sistemas mal configurados o desactualizados. A modo
de ejemplo, el [motor de búsqueda Shodan](https://www.shodan.io/report/89bnfUyJ)
le ayuda a descubrir dispositivos que aún sufren la
vulnerabilidad [Heartbleed](https://en.wikipedia.org/wiki/Heartbleed),
la cual fue parcheada en abril del 2014.

{%- include t10_subsection.html token="references" pos="right" -%}
**OWASP**<br>
* [OWASP Application Security Verification Standard: V1 Architecture, design and threat modelling](/www-project-application-security-verification-standard)<br>
* [OWASP Dependency Check (for Java and .NET libraries)](/www-project-dependency-check)<br>
* [OWASP Testing Guide - Map Application Architecture (OTG-INFO-010)](/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/01-Information_Gathering/10-Map_Application_Architecture)<br>
* [OWASP Virtual Patching Best Practices](/www-community/Virtual_Patching_Best_Practices)<br>
<br>
**Externos**<br>
* [The Unfortunate Reality of Insecure Libraries](https://cdn2.hubspot.net/hub/203759/file-1100864196-pdf/docs/Contrast_-_Insecure_Libraries_2014.pdf)<br>
* [MITRE Common Vulnerabilities and Exposures (CVE) search](https://www.cvedetails.com/version-search.php)<br>
* [National Vulnerability Database (NVD)](https://nvd.nist.gov/)<br>
* [Retire.js for detecting known vulnerable JavaScript libraries](https://github.com/retirejs/retire.js/)<br>
* [Node Libraries Security Advisories](https://nodesecurity.io/advisories)<br>
* [Ruby Libraries Security Advisory Database and Tools](https://rubysec.com/)
{% include t10_subsection_end.html %}
