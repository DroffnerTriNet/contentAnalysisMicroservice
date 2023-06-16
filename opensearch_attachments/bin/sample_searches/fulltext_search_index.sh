#! /bin/zsh
#
# OpenSearch: Full-Text Search the Attachment Index
# =====================================================================

# Match a specific word.
# SEARCH_WORDS="Lorem"

# Match a misspelled word within 2 letters.
SEARCH_WORDS="aney~2"

# Search the attachments index for SEARCH_WORDS with a query-string.
curl -X GET "localhost:9200/my-index-000001/_search?pretty&q=${SEARCH_WORDS}"

