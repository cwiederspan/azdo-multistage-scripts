# Azure DevOps CLI Command

```bash
az devops service-endpoint list --organization https://dev.azure.com/cdwms/ --project azdo-multistage-scripts

az pipelines create --name 'Default Variables with CLI v3' \
   --description 'A pipeline created by the Azure DevOps CLI using variables with default values' \
   --service-connection ba138d34-e478-4486-9e5c-bad95194d716 \
   --organization https://dev.azure.com/cdwms/ \
   --project azdo-multistage-scripts \
   --repository cwiederspan/azdo-multistage-scripts \
   --repository-type github \
   --branch master \
   --yml-path default-variables-pipelines.yml \
   --debug

   # https://github.com/Azure/azure-devops-cli-extension/issues/639
   --variables var1=value1 var2=value2
```