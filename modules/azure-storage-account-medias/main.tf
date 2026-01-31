resource "azurerm_storage_account" "grupo118finalchallengeinfrasa" {
  name                     = "grupo118finalchallengesa"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_replication_type = "LRS"
  account_tier             = "Standard"
}

resource "azurerm_storage_container" "grupo118finalchallengeinfrasacontainer" {
  name                  = "grupo118finalchallengecontainer"
  storage_account_id    = azurerm_storage_account.grupo118finalchallengeinfrasa.id
  container_access_type = "private"
}