---

document: OWASP Top Ten 2017 (es)
year: 2017
order: 20
en: What's Next for Application Managers
title: Próximos pasos para los Administradores de Aplicaciones
lang: es
layout: full-width-document
author:
contributors: vtamara
tags: OWASP Top Ten 2017 (es), Top Ten, es
redirect_from:
  - 2017/es/What%2527s_Next_for_Application_Managers.html

---
{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html text="Administrar el Ciclo de Vida Completo de la Aplicación" pos="firstWhole" -%}

Las aplicaciones pertenecen a los sistemas más complejos que los humanos crean 
y mantienen. La administración TI (Tecnología de la Información) para una 
aplicación debería ser ejecutada por especialistas en TI que sean responsables 
por el ciclo de vida completo de la misma. Sugerimos la creación de un 
administrador para cada aplicación a los efectos de proveer una contraparte 
técnica al dueño de la aplicación. El administrador se encarga de todo el 
ciclo de vida de la aplicación desde el punto de vista de TI, desde la 
recopilación de los requisitos hasta el proceso de retiro de los sistemas,
que a menudo se pasa por alto. <br>

{% include t10_subsection_inner_round_box.html
   topic='**Administración de Requisitos y Recursos:**'
   description="
      * Recolectar y negociar los requerimientos de negocios para la aplicación, incluyendo confidencialidad, autenticidad, integridad y disponibilidad de todos los activos de datos y la lógica del negocio<br>
      * Recopilar los requerimientos técnicos incluyendo requerimientos de seguridad funcionales y no funcionales.<br>
      * Planear y negociar el presupuesto que cubre todos los aspectos de diseño, construcción, pruebas y operación, incluyendo actividades de seguridad."
%}
{% include t10_subsection_inner_round_box.html
   topic='**Solicitud de Propuestas (RFP) y Contrataciones:**'
   description="
        * Negociar los requerimientos con los desarrolladores externos e internos, incluyendo lineamientos y requerimientos de seguridad con respecto a su programa de seguridad, e.g. SDLC, mejores prácticas.<br>
        * Evaluar el cumplimiento de todos los requerimientos técnicos, incluyendo las fases de planificación y diseño.<br>
        * Negociar todos los requerimientos técnicos incluyendo diseño, seguridad y acuerdos de nivel de servicio (SLA).<br>
        * Adoptar plantillas y listas de comprobación, como el [Anexo de Contrato de Software Seguro](/www-community/OWASP_Secure_Software_Contract_Annex).<br>
Nota: este anexo toma en cuenta las leyes de los EE.UU. y por lo tanto se recomienda realizar las consultas legales correspondientes a cada país antes de utilizarlo."
%}
{% include t10_subsection_inner_round_box.html
   topic='**Planificación y Diseño:**'
   description="
        * Negociar la planificación y diseño con los desarrolladores e interesados internos, e.g. especialistas de seguridad.<br>
        * Definir la arquitectura de seguridad, controles y contramedidas adecuadas a las necesidades de protección y el nivel de amenazas esperado. Esto debería contar con el apoyo de especialistas en seguridad.<br>
        * Asegurar que el propietario de la aplicación acepta los riesgos remanentes o bien que provea recursos adicionales.<br>
        * En cada carrera (sprint), asegurar que se creen historias de seguridad que incluyan restricciones añadidas por los requerimientos no funcionales."
%}
{% include t10_subsection_inner_round_box.html
   topic='**Despliegue, Pruebas y Puesta en Producción:**'
   description='
        * Automatizar el despliegue seguro de la aplicación, interfaces y todo componente, incluyendo las autorizaciones requeridas.<br>
        * Probar las funciones técnicas, integración a la arquitectura de TI, y coordinar pruebas de funciones de negocio.<br>
        * Crear casos de “uso” y de “abuso” tanto desde el punto de vista técnico como del negocio.<br>
        * Administrar pruebas de seguridad de acuerdo a los procesos internos, las necesidades de protección y el nivel de amenazas asumido para la aplicación.<br>
        * Poner la aplicación en operación y migrar las aplicaciones usadas previamente en caso de ser necesario.<br>
        * Finalizar toda la documentación, incluyendo la base de datos de gestión de cambios (CMDB) y la arquitectura de seguridad.<br>'
%}
{% include t10_subsection_inner_round_box.html
   topic='**Operación y gestión del cambio:**'
   description="
        * Las operaciones debe incluir lineamientos para la administración de seguridad de la aplicación (e.g. administración de parches).<br>
        * Aumentar la conciencia de seguridad de los usuarios y administrar conflictos de usabilidad vs. seguridad.<br>
        * Panificar y gestionar cambios, por ejemplo la migración a nuevas versiones de la aplicación u otros componentes como sistema operativo, interfaces de software y bibliotecas.<br>
        * Actualizar toda la documentación, incluyendo la Base de Datos de Gestión de Cambios (CMDB) y la arquitectura de seguridad, controles y contramedidas, incluyendo libros de ejecución o documentación del proyecto."
%}
{% include t10_subsection_inner_round_box.html
   topic='**Retiro de Sistemas:**' 
   description="
        * Cualquier dato requerido debe ser almacenado. Otros datos deben ser eliminados de forma segura.<br>
        * Retirar la aplicación en forma segura, incluyendo el borrado de cuentas, roles y permisos no usados.<br>
        * Establecer el estado de la aplicación a “retirada” en la CMDB."
%}
{%- include t10_subsection_end.html -%}
