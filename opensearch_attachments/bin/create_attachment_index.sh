#! /bin/zsh
#
# OpenSearch: Create Attachment Ingestion Index
# =====================================================================

# TODO: Add other discrete fields to document for searches (company-id, hr-admin-id, date-received).

curl -X PUT "localhost:9200/_ingest/pipeline/attachment?pretty" -H 'Content-Type: application/json' -d'
{
  "description" : "Extract attachment information",
  "processors" : [
    {
      "attachment" : {
        "field" : "data"
      }
    }
  ]
}
'
