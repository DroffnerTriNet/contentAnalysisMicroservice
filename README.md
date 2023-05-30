# Content Analysis Microservice

This is a **Content Analysis Microservice** to read a REST API into a **full text** database.
The service uses **Elasticsearch** and an included **Apache Tika** inside a Python REST API.

## Reading Structured Text Files

This microservice expects to read **_semi-structured_ text files** into an **Elasticsearch** index
(i.e. document collection). The resulting _plain text_ should have **full text** and **document key(s)** 
search access.

- **MS Excel**: Read **Excel spreadsheets** into **CSV** suitable for SQL database loading
- **PDF files**: Read **PDF forms** into documents
- **Correspondence**: Read **MS Word** or **Mac Rich-Text Format** business letters

## Searching

...

## Related Links

**Elasticsearch** and **Apache Tika** are the tools used to read the text files into the _document oriented_ database.
**Django Haystack** is a _full text_ search client that the REST API may use.

1. [Django Haystack search client](https://django-haystack.readthedocs.io/en/master/)
2. [ES Attachment Process (with Tika)](https://www.elastic.co/guide/en/elasticsearch/reference/current/attachment.html#using-attachment)
3. [Apache Tika Content Analysis Toolkit](https://tika.apache.org/)
