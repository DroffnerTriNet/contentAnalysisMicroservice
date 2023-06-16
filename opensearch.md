# Opensearch Installation

This document describes how **Opensearch** should be installed for this project.

## Opensearch on AWS

TODO: Write how the AWS service must ber set-up, especially, the **ingest-attachment** plugin.

## Opensearch on Mac OS X

Development is on **Mac OS X**. Use **homebrew** to install **Opensearch**.

### Homebrew Installation

```bash
brew install opensearch
brew tap homebrew/services
brew services start opensearch
```

Then, set the **Java bin/** to match the **homebrew** location. Open `~/.zprofile` to add to the `PATH`.

```bash
# Setting PATH for Java 20.1
# The original version is saved in .zprofile.pysave
PATH="/usr/local/Cellar/openjdk/20.0.1/bin:${PATH}"
export PATH                                                                                                                                                                            
```

### Add Ingest Attachment

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
