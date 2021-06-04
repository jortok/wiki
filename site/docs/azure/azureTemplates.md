# Azure Templates

## Guardar el template

```bash
azStorageName=mejoredustorageborrar
azTemplateFile="~/Documents/azureTemplates/azureDeploy.json"
azLocation="westus2"
azResourceGroup="templates"
azStorageSKU="Standard_LRS"

az group create \
  --name templates \
  --location $azLocation

az deployment group create \
  --name addnameparameter \
  --resource-group $azResourceGroup \
  --template-file $azTemplateFile \
  --parameters storageSKU=$azStorageSKU storageName=$azStorageName

az deployment group create \
  --name addappserviceplan \
  --resource-group $azResourceGroup \
  --template-file $templateFile \
  --parameters storagePrefix=tienda storageSKU=Standard_LRS

az group delete -g $azResourceGroup

```