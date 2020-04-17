---
title: Sponsors
layout:  col-sidebar
tab: true
order: 3
tags: top10
---

## Project Sponsors
The OWASP Top 10 - 2017 project was sponsored by Autodesk. Thanks to [Aspect Security](https://www.aspectsecurity.com/){:target='_blank'} for sponsoring earlier versions.

![Autodesk](assets/images/autodesk.png)


## Individual Supporters

{% assign individual_sponsors = site.data.ow_attributions | uniq %}
{% for person in individual_sponsors %}
* {{ person | strip_html | strip_newlines | strip }}
{% endfor %}
