#!/bin/bash

export CDD_SERVER_URL=https://cddirector.io
export CDD_TENANT_ID="17827b55-3a42-403f-b1f8-9655d7e625bb"
export CDD_API_KEY="eyJhbGciOiJIUzUxMiJ9.eyJ1c2VybmFtZSI6InJhbGx5MS5yYWxseWRldkBnbWFpbC5jb20iLCJ0ZW5hbnRJZCI6IjE3ODI3YjU1LTNhNDItNDAzZi1iMWY4LTk2NTVkN2U2MjViYiIsInVzZXJJZCI6MSwianRpIjoiMTM1NmQ3YzItMzdhYi00ZTRlLTk1ZWItYTJmZGVlMjgzMzhlIiwiZXhwIjoxNjEyNjA4MjgwfQ.WUVAR0J2lPG4hiOmx486tEmMw_zkksFNqM6NbEtKXe1pduJXSBNbZXdcgFVcuGPz_3qqaYYVs6qqJWB1AT1e6g"



export GIT_URL=https://github.com/rally1-rallydev/code-churn.git
export GIT_BRANCH=main
export GIT_COMMIT=73209a3348f40a71bbc42a208db81d065980bd11
export GIT_PREVIOUS_SUCCESSFUL_COMMIT=73209a3348f40a71bbc42a208db81d065980bd11

export DIL_REPOSITORY_NAME=`echo $GIT_URL | sed 's/^.*\/\(.*\).git$/\1/'`
export DIL_REPOSITORY_BRANCH=$GIT_BRANCH
export DIL_REPOSITORY_BRANCH_GIT_COMMIT_ID=$GIT_COMMIT
export DIL_REPOSITORY_BRANCH_BUILD_NUMBER=$GIT_PREVIOUS_SUCCESSFUL_COMMIT

curl -s --header "Content-Type: application/json" --header "Accept: application/json" -d "{ \"applicationName\": \"$DIL_REPOSITORY_NAME\", \"applicationVersionBuildNumber\": \"$DIL_REPOSITORY_BRANCH_BUILD_NUMBER\", \"applicationVersionName\": \"$DIL_REPOSITORY_BRANCH\", \"commits\": [ { \"commitId\": \"$DIL_REPOSITORY_BRANCH_GIT_COMMIT_ID\" } ]}" "$CDD_SERVER_URL/cdd/design/$CDD_TENANT_ID/v1/applications/application-versions/application-version-builds" -H "Authorization: Bearer $CDD_API_KEY"
