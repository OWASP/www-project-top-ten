---

layout: col-document
title: A1-Injection
author:
contributors:
tags: OWASP Top Ten 2017, Top Ten, A1
document: OWASP Top Ten 2017
order: 6
exploitability: 3
prevalence: 2
detectability: 3
technical: 3

---

{% include impacts.html %}

* **Threat Agents/Attack Vectors**: Almost any source of data can be an injection vector, environment variables, parameters, external and internal web services, and all types of users. Injection flaws occur when an attacker can send hostile data to an interpreter.
* **Security Weakness**: Injection flaws are very prevalent, particularly in legacy code. Injection vulnerabilities are often found in SQL, LDAP, XPath, or NoSQL queries, OS commands, XML parsers, SMTP headers, expression languages, and ORM queries.
Injection flaws are easy to discover when examining code. Scanners and fuzzers can help attackers find injection flaws.
* **Impacts**: Injection can result in data loss, corruption, or disclosure to unauthorized parties, loss of accountability, or denial of access. Injection can sometimes lead to complete host takeover. The business impact depends on the needs of the application and data.

---

### Is the Application Vulnerable?

An application is vulnerable to attack when:

* User-supplied data is not validated, filtered, or sanitized by the application.
* Dynamic queries or non-parameterized calls without context-aware escaping are used directly in the interpreter.
* Hostile data is used within object-relational mapping (ORM) search parameters to extract additional, sensitive records.
* Hostile data is directly used or concatenated, such that the SQL or command contains both structure and hostile data in dynamic queries, commands, or stored procedures.
* Some of the more common injections are SQL, NoSQL, OS command, Object Relational Mapping (ORM), LDAP, and Expression Language (EL) or Object Graph Navigation Library (OGNL) injection. The concept is identical among all interpreters. Source code review is the best method of detecting if applications are vulnerable to injections, closely followed by thorough automated testing of all parameters, headers, URL, cookies, JSON, SOAP, and XML data inputs. Organizations can include static source ([SAST](/www-community/Source_Code_Analysis_Tools)) and dynamic application test ([DAST](/www-community/Vulnerability_Scanning_Tools)) tools into the CI/CD pipeline to identify newly introduced injection flaws prior to production deployment.

### How to Prevent

Preventing injection requires keeping data separate from commands and queries.

* The preferred option is to use a safe API, which avoids the use of the interpreter entirely or provides a parameterized interface, or migrate to use Object Relational Mapping Tools (ORMs).
**Note**: Even when parameterized, stored procedures can still introduce SQL injection if PL/SQL or T-SQL concatenates queries and data, or executes hostile data with EXECUTE IMMEDIATE or exec().
* Use positive or "whitelist" server-side input validation. This is not a complete defense as many applications require special characters, such as text areas or APIs for mobile applications.
* For any residual dynamic queries, escape special characters using the specific escape syntax for that interpreter.
**Note**: SQL structure such as table names, column names, and so on cannot be escaped, and thus user-supplied structure names are dangerous. This is a common issue in report-writing software.
* Use LIMIT and other SQL controls within queries to prevent mass disclosure of records in case of SQL injection.

### Example Attack Scenarios

**Scenario #1**: An application uses untrusted data in the construction of the following vulnerable SQL call:

    String query = "SELECT * FROM accounts WHERE custID='" + request.getParameter("id") + "'";

**Scenario #2**: Similarly, an application’s blind trust in frameworks may result in queries that are still vulnerable, (e.g. Hibernate Query Language (HQL)):

    Query HQLQuery = session.createQuery("FROM accounts WHERE custID='" + request.getParameter("id") + "'");

In both cases, the attacker modifies the ‘id’ parameter value in their browser to send: ' or '1'='1. For example:

    http://example.com/app/accountView?id=' or '1'='1

This changes the meaning of both queries to return all the records from the accounts table. More dangerous attacks could modify or delete data, or even invoke stored procedures.

### References

#### OWASP 

* [OWASP Proactive Controls: Parameterize Queries](/www-project-proactive-controls)
* [OWASP ASVS: V5 Input Validation and Encoding](/www-project-application-security-verification-standard)
* [OWASP Testing Guide: SQL Injection, Command Injection, and ORM Injection](https://www2.owasp.org/www-project-testing/#div-downloads)
* [OWASP Cheat Sheet: Injection Prevention](https://cheatsheetseries.owasp.org/cheatsheets/Injection_Prevention_Cheat_Sheet.html)
* [OWASP Cheat Sheet: SQL Injection Prevention](https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html)
* [OWASP Cheat Sheet: Injection Prevention in Java](https://cheatsheetseries.owasp.org/cheatsheets/Injection_Prevention_Cheat_Sheet_in_Java.html)
* [OWASP Cheat Sheet: Query Parameterization](https://cheatsheetseries.owasp.org/cheatsheets/Query_Parameterization_Cheat_Sheet.html)
* [OWASP Automated Threats to Web Applications – OAT-014](/www-project-automated-threats-to-web-applications/)

#### External 

* [CWE-77: Command Injection](https://cwe.mitre.org/data/definitions/77.html) 
* [CWE-89: SQL Injection](https://cwe.mitre.org/data/definitions/89.html)
* [CWE-564: Hibernate Injection](https://cwe.mitre.org/data/definitions/564.html)
* [CWE-917: Expression Language Injection](https://cwe.mitre.org/data/definitions/917.html)
* [PortSwigger: Server-side template injection](https://portswigger.net/kb/issues/00101080_serversidetemplateinjection)
