# Opensearch Sample Queries

Here are some **Opensearch** example queries. The **URI Search** method is easier to test but much less flexible.
The **Query Domains Specific Language (DSL)** is powerful.

- [Query DSL](https://www.elastic.co/guide/en/elasticsearch/reference/7.5/query-dsl.html)
- [Query String Syntax](https://www.elastic.co/guide/en/elasticsearch/reference/7.5/query-dsl-query-string-query.html#query-string-syntax)
- [URI Search](https://www.elastic.co/guide/en/elasticsearch/reference/7.5/search-uri-request.html)

## Show a Document by ID

Show a specific **document** by its id **/my_id**.

- [Show Document my_id](http://localhost:9200/my-index-000001/_doc/my_id?pretty)

## Discrete Field Matches

A document has **discrete fields** to match exactly.

- [Match Field date_entered:2023-06-15](http://localhost:9200/my-index-000001/_search?pretty&q=date_entered:2023-06-15)
- [Match Sub-field attachment.language:en](http://localhost:9200/my-index-000001/_search?pretty&q=attachment.language:en)
- [Match Multiple Fields](http://localhost:9200/my-index-000001/_search?pretty&q=date_entered:2023-06-15+AND+attachment.language:en)

## Full Text Searches

A **full text** search finds **words** anywhere in the document.

- [Word Search anywhere in the document](http://localhost:9200/my-index-000001/_search?pretty&q=lorem)
- [Fuzzy Search has a word off by one letter](http://localhost:9200/my-index-000001/_search?pretty&q=anet~1)