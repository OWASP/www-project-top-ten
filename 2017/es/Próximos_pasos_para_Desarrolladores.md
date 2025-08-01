---

document: OWASP Top Ten 2017 (es)
year: 2017
order: 17
en: What's Next for Developers
title: Próximos pasos para Desarrolladores
lang: es
layout: full-width-document
author:
contributors: vtamara
tags: OWASP Top Ten 2017 (es), Top Ten, es
redirect_from:
  - 2017/es/What%2527s_Next_for_Developers

---
{%- include t10_subsection_begin.html -%}
{%- include t10_subsection.html text="Establezca y utilice procesos de seguridad repetibles y controles estándar de seguridad" pos="firstWhole" -%}

Independientemente de si usted es nuevo en la seguridad de aplicaciones web o ya
está familiarizado con estos
riesgos, la tarea de producir una aplicación web segura o arreglar una ya
existente puede ser difícil. Si debe gestionar
una gran cartera de aplicaciones, esta tarea puede resultar desalentadora.<br>

Para ayudar a organizaciones y desarrolladores a reducir los riesgos de
seguridad de sus aplicaciones de un modo
rentable, OWASP ha producido un gran número de recursos gratuitos y abiertos,
que los puede utilizar para gestionar
la seguridad de las aplicaciones en su organización. A continuación, 
se muestran algunos de los muchos recursos que OWASP ha producido para ayudar 
a las organizaciones a generar aplicaciones web y APIs seguras. 
En las páginas siguientes, presentamos recursos adiciones de OWASP que 
pueden ayudar a las organizaciones a verificar la
seguridad de sus aplicaciones y APIs.<br>
<br>

{% include t10_subsection_inner_round_box.html
   topic='**Requisitos de Seguridad en Aplicaciones**'
   description="Para producir aplicaciones web seguras, se debe definir qué significa “seguro” para una aplicación en particular. OWASP recomienda utilizar el [Estándar de Verificación de Seguridad en Aplicaciones de OWASP (ASVS)](/www-project-application-security-verification-standard), como una guía para ajustar los requisitos de seguridad de sus aplicaciones. Si el servicio es externo, vea el Anexo [Contrato de software seguro de OWASP](/www-community/OWASP_Secure_Software_Contract_Annex).
   **Nota**: ese anexo toma en cuenta las leyes de los EE.UU. y por lo tanto se recomienda realizar las consultas legales correspondientes a cada país antes de utilizarlo."
%}
{% include t10_subsection_inner_round_box.html
   topic='**Arquitectura de seguridad en aplicaciones**'
   description="En lugar de adaptar la seguridad en su aplicación y APIs, es mucho más efectivo en costos diseñar la seguridad desde el principio. OWASP recomienda las [Hojas de trucos de prevención de OWASP](/www-project-cheat-sheets) como punto inicial para guiarlo en comor diseñar la seguridad desde el principio."
%}
{% include t10_subsection_inner_round_box.html
   topic='**Controles Estándar de Seguridad:**'
   description="Construir controles de seguridad fuertes y usables es difícil. Un conjunto de controles estándar de seguridad simplifican radicalmente el desarrollo de aplicaciones y APIs seguras.
   Las [Hojas de trucos de prevención de OWASP](/www-project-cheat-sheets) son un buen punto de inicio para desarrolladores, y muchos de los marcos de trabajo modernos incluyen controles estándares y efectivos para autorización, validación, prevención de CSRF, etc."
%}
{% include t10_subsection_inner_round_box.html
   topic='**Ciclo de vida de desarrollo seguro:**'
   description="Para mejorar el proceso que su organización utiliza para crear aplicaciones y APIs, OWASP recomienda el [Modelo de Garantía de la Madurez del Software (SAMM)](/www-project-samm). Este modelo ayuda a las organizaciones a formular e implementar estrategias para el software seguro, adaptado a los riesgos específicos para su negocio y organización."
%}
{% include t10_subsection_inner_round_box.html
   topic='**Educación en seguridad de aplicaciones:**'
   description="El proyecto educativo de OWASP proporciona material de formación para ayudar a educar a los desarrolladores en seguridad en aplicaciones web. Para una formación práctica acerca de vulnerabilidades, pruebe los proyectos [WebGoat de OWASP](/www-project-webgoat), [Proyecto tienda de jugos OWASP](/www-project-juice-shop) or the [Proyecto Aplicaciones web quebradas OWASP](/www-project-broken-web-applications) [(wiki anterior)](https://wiki.owasp.org/index.php/OWASP_Broken_Web_Applications_Project). Para mantenerse al día, asista a una [Conferencia AppSec de OWASP](/events), [Entrenamiento en Conferencia OWASP](/events), o a las [reuniones de capítulos locales de OWASP](/chapters)."
%}

Hay numerosos recursos adicionales de OWASP disponibles para su uso.  Por favor
visite la [página de proyectos OWASP](/projects), que lista todos los
proyectos Insignia, Laboratorios, proyectos en incubadora en el inventario de
proyectos OWASP.  La mayoría de recursos OWASP están disponibles en 
nuestro [sitio web](https://owasp.org), y muchos documentos OWASP pueden 
ordenarse en [papel o como libros electrónicos](https://stores.lulu.com/owasp).
{%- include t10_subsection_end.html -%}
