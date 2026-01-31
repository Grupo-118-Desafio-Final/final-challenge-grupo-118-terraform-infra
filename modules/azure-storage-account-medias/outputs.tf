# Storage Account Outputs

output "name" {
  value = azurerm_storage_account.grupo118finalchallengeinfrasa.name
  description = "The name of the storage account"
}

output "primary_connection_string" {
  value = azurerm_storage_account.grupo118finalchallengeinfrasa.primary_connection_string
  description = "The primary connection string for the storage account"
}

output "primary_blob_endpoint" {
  value = azurerm_storage_account.grupo118finalchallengeinfrasa.primary_blob_endpoint
  description = "The primary blob endpoint for the storage account"
}

output "primary_blob_host" {
  value = azurerm_storage_account.grupo118finalchallengeinfrasa.primary_blob_host
  description = "The primary blob host for the storage account"
}

output "primary_blob_internet_endpoint" {
  value = azurerm_storage_account.grupo118finalchallengeinfrasa.primary_blob_internet_endpoint
  description = "The primary blob internet endpoint for the storage account"
}

output "primary_blob_internet_host" {
  value = azurerm_storage_account.grupo118finalchallengeinfrasa.primary_blob_internet_host
  description = "The primary blob internet host for the storage account"
}

# Container Outputs

output "container_id" {
  value = azurerm_storage_container.grupo118finalchallengeinfrasacontainer.id
  description = "The ID of the storage container"
}