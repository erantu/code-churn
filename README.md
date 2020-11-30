# README

1. Create a CDD SaaS tenant and API key
- create an API key for the logged in user - My Settings section in CDD UI

2. Connect CDD SaaS tenant to BizOps tenant
- set CDD SaaS enterprise site id
-- update DEVOPS_TENANT_ID and DEVOPS_API_KEY properties in [setDevOpsEnterpriseSiteId.sh](https://github.com/rally1-rallydev/code-churn/blob/main/setDevOpsEnterpriseSiteId.sh) script and execute
-- map the CDD SaaS tenant to BizOps tenant - platform team

3. Install and setup CDD HPI in Jenkins - https://storage.googleapis.com/cdd-plugins/cdd-jenkins.hpi
- configure CDD SaaS tenant id (DEVOPS_TENANT_ID) in [sendNotificationToDevOpsCall.groovy](https://github.com/rally1-rallydev/code-churn/blob/main/vars/sendNotificationToDevOpsCall.groovy) file and create DEVOPS_API_KEY credentials in Jenkins
- call the groovy file [sendNotificationToDevOpsCall.groovy](https://github.com/rally1-rallydev/code-churn/blob/main/vars/sendNotificationToDevOpsCall.groovy) in the post successful build step

4. Create Commit Data Source per source code repository
- update source code repo (DIL_REPOSITORY_OWNER, DIL_REPOSITORY_NAME, DIL_REPOSITORY_USERNAME and DIL_REPOSITORY_PASSWORD) in [application.json](https://github.com/rally1-rallydev/code-churn/blob/main/application.json)
- import application JSON DSL per source code repository - update DEVOPS_TENANT_ID and DEVOPS_API_KEY in [createDevOpsCommitDataSource.sh](https://github.com/rally1-rallydev/code-churn/blob/main/createDevOpsCommitDataSource.sh) script and execute
