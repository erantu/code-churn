#!/bin/bash

export DEVOPS_SERVER_URL=https://cddirector.io
export DEVOPS_TENANT_ID="5a7accc0-0fc1-4f3f-b792-2204937c7f64"
export DEVOPS_API_KEY="eyJhbGciOiJIUzUxMiJ9.eyJ1c2VybmFtZSI6ImVyYW4udHVya2lAYnJvYWRjb20uY29tIiwidGVuYW50SWQiOiI1YTdhY2NjMC0wZmMxLTRmM2YtYjc5Mi0yMjA0OTM3YzdmNjQiLCJ1c2VySWQiOjM4LCJqdGkiOiJhYzExNjIzZi1kOGI5LTQwNzctYmNmOS04Mjk3NTA0YTkwNzgiLCJleHAiOjE2MTgxMzc3NDl9.0bAcTyyp8lbqmfXeKepx05wDakwMY76AALrn6sKsF0OM7dmaqNSLQS2mRADtFoId5o02P_iUWrDhp6rea-AAbQ"



export DIL_ENTERPRISE_SITE_ID=105246

curl -s -X POST --header "Content-Type: application/json" --header "Accept: application/json" -d "{ \"enterpriseSiteId\": \"$DIL_ENTERPRISE_SITE_ID\" }" "$DEVOPS_SERVER_URL/cdd/administration/$DEVOPS_TENANT_ID/v1/product/license" -H "Authorization: Bearer $DEVOPS_API_KEY"
curl -s -X PUT --header "Content-Type: application/json" --header "Accept: application/json" -d "{ \"enterpriseSiteId\": \"$DIL_ENTERPRISE_SITE_ID\" }" "$DEVOPS_SERVER_URL/cdd/administration/$DEVOPS_TENANT_ID/v1/product/license" -H "Authorization: Bearer $DEVOPS_API_KEY"
