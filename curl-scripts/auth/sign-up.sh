#!/bin/bash

curl "http://localhost:4741/sign-up" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "dko@ga",
      "password": "1234",
      "password_confirmation": "1234",
      "handle": "dko"
    }
  }'

echo
