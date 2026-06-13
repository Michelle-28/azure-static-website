param storageName string = 'michazstore26'
param location string = resourceGroup().location

resource storage 'Microsoft.Storage/storageAccounts@2023-05-01' = {
  name: storageName
  location: location

  sku: {
    name: 'Standard_LRS'
  }

  kind: 'StorageV2'

  properties: {
    supportsHttpsTrafficOnly: true
  }
}

output storageAccountName string = storage.name
