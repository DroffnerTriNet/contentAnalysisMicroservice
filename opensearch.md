# Opensearch on Mac OS X

## Add Ingest Attachment

The `ingest-attachment` plugin must be added to the **homebrew** service.

```bash
(venv-py3.9) adroffner@MX2MJXCKGLQ contentAnalysisMicroservice % opensearch-plugin install ingest-attachment 
warning: no-jdk distributions that do not bundle a JDK are deprecated and will be removed in a future release
-> Installing ingest-attachment
-> Downloading ingest-attachment from opensearch
[=================================================] 100%   
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@     WARNING: plugin requires additional permissions     @
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
* java.lang.RuntimePermission accessClassInPackage.sun.java2d.cmm.kcms
* java.lang.RuntimePermission accessDeclaredMembers
* java.lang.RuntimePermission getClassLoader
* java.lang.reflect.ReflectPermission suppressAccessChecks
* java.security.SecurityPermission createAccessControlContext
* java.security.SecurityPermission insertProvider
* java.security.SecurityPermission putProviderProperty.BC
See http://docs.oracle.com/javase/8/docs/technotes/guides/security/permissions.html
for descriptions of what these permissions allow and the associated risks.

Continue with installation? [y/N]y
-> Installed ingest-attachment with folder name ingest-attachment
```
