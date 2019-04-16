#!/bin/bash

curl "http://localhost:4741/likes" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "like": {
      "question_id": "4"
    }
  }'

echo
