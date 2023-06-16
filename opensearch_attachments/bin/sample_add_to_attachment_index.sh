#! /bin/zsh
#
# OpenSearch: Attachment Ingestion - Sample Document Insertion
# =====================================================================

# Insert "data" attached document as a record.
# Base64 Encoded "Lorem ipsum dolor sit amet"
curl -X PUT "localhost:9200/my-index-000001/_doc/my_id?pipeline=attachment&pretty" -H 'Content-Type: application/json' -d'
{
  "data": "e1xydGYxXGFuc2kNCkxvcmVtIGlwc3VtIGRvbG9yIHNpdCBhbWV0DQpccGFyIH0="
}
'

# View the same document by ID.
curl -X GET "localhost:9200/my-index-000001/_doc/my_id?pretty"

