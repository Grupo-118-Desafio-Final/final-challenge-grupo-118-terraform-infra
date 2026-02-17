resource "azurerm_storage_account" "grupo118finalchallengeinfrasa" {
  name                     = "grupo118finalchallengesa"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_replication_type = "LRS"
  account_tier             = "Standard"

  blob_properties {
    cors_rule {
      allowed_origins    = ["http://localhost:3000"]
      allowed_methods    = ["DELETE", "GET", "HEAD", "OPTIONS", "POST", "PUT"]
      allowed_headers    = ["*"]
      exposed_headers    = ["*"]
      max_age_in_seconds = 3600
    }

    cors_rule {
      allowed_origins    = ["*"]
      allowed_methods    = ["DELETE", "GET", "HEAD", "OPTIONS", "POST", "PUT"]
      allowed_headers    = ["*"]
      exposed_headers    = ["*"]
      max_age_in_seconds = 3600
    }
  }
}

resource "azurerm_storage_container" "grupo118finalchallengeinfrasacontainer" {
  name                  = "grupo118finalchallengecontainer"
  storage_account_id    = azurerm_storage_account.grupo118finalchallengeinfrasa.id
  container_access_type = "private"
}
