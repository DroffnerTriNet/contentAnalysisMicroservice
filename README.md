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

### Content Analysis

**OpenSearch (Elasticsearch fork)** and **Apache Tika** are the services used to read the rich-text 
files into the _document oriented_ database.

1. [ES Attachment Processor (with Tika)](https://www.elastic.co/guide/en/elasticsearch/reference/current/attachment.html#using-attachment)
2. [Apache Tika Content Analysis Toolkit](https://tika.apache.org/)

### Search Tools

The **OpenSearch** service is an incompatible fork of _Elasticsearch_ that **AWS** uses.
**Django Haystack** is a _full text_ search client that **OpenSearch** might be able to use.

1. [Install OpenSearch Service](https://formulae.brew.sh/formula/opensearch) for development
2. [Django Haystack search client](https://django-haystack.readthedocs.io/en/master/)
3. [Django OpenSearch DSL Client](https://django-opensearch-dsl.readthedocs.io/en/latest/)

### REST API Tools

Use **Django REST Framework** to build the REST API elements that may allow search requests or return **_original_ documents**.
Add **Django CORS Headers** to the HTTP request to secure the API. _Do not confuse this with_ **CSRF Headers**.

1. [Django REST Framework](https://www.django-rest-framework.org/tutorial/quickstart/)
2. [Django CORS Headers](https://pypi.org/project/django-cors-headers/)