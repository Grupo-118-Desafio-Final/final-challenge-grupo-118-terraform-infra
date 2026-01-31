output "name" {
  description = "The name of the container registry"
  value       = azurerm_container_registry.grupo118finalchallengeinfraacr.name
}

output "id" {
  description = "The ID of the container registry"
  value       = azurerm_container_registry.grupo118finalchallengeinfraacr.id
}

output "login_server" {
  description = "The login server of the container registry"
  value       = azurerm_container_registry.grupo118finalchallengeinfraacr.login_server
}

output "username" {
  description = "The admin username for the Azure Container Registry (if enabled)."
  value       = azurerm_container_registry.grupo118finalchallengeinfraacr.admin_username
}

output "password" {
  description = "The admin password for the Azure Container Registry (if enabled)."
  value       = azurerm_container_registry.grupo118finalchallengeinfraacr.admin_password
}
