---
title: Sponsors
layout:  col-sidebar
tab: true
order: 2
tags: top10
---

## Project Sponsors

[!(assets/images/autodesk.png)](http://www.autodesk.com/)

### Individual Sponsors

{% assign individual_sponsors = site.data.ow_attributions | uniq %}
{% for person in individual_sponsors %}
* {{ person | strip_html | strip_newlines | strip }}
{% endfor %}
