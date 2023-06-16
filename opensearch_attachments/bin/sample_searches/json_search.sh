#! /bin/zsh
#
# OpenSearch: Sample Document Query in Body for Exact "term"
# =====================================================================

# Query DSL: Find matching documents.
# Limit "_source" fields returned to client.
curl -X POST "localhost:9200/my-index-000001/_search/?&pretty" -H 'Content-Type: application/json' -d'
{
  "_source" : ["date_entered", "attachment.language", "attachment.author"],
  "query" : {
      "term" : { "date_entered" : "2023-06-15" }
  }
}
'
