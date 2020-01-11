---
title: Sponsors
layout:  col-sidebar
tab: true
order: 2
tags: top10
---

## Project Sponsors
The OWASP Top 10 - 2017 project was sponsored by Autodesk. Thanks to [Aspect Security](https://www.aspectsecurity.com/) for sponsoring earlier versions.

[!(/assets/images/corp-member-logo/autodesk.png)](http://www.autodesk.com/)

## Individual Supporters

{% assign individual_sponsors = site.data.ow_attributions | uniq %}
{% for person in individual_sponsors %}
* {{ person | strip_html | strip_newlines | strip }}
{% endfor %}
