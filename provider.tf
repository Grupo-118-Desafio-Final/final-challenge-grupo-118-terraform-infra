# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

provider "kubectl" {
  host                   = module.infra_aks.host
  cluster_ca_certificate = base64decode(module.infra_aks.cluster_ca_certificate)
  client_certificate     = base64decode(module.infra_aks.client_certificate)
  client_key             = base64decode(module.infra_aks.client_key)
  load_config_file       = false
}

# Configure the CloudAMQP Provider

# Create a new cloudamqp instance
provider "cloudamqp" {
  apikey                         = var.cloudamqp_customer_api_key
  enable_faster_instance_destroy = true // Optional configuration, can be left out.
}

# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.58.0"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.19.0"
    }
    cloudamqp = {
      source  = "cloudamqp/cloudamqp"
      version = ">= 1.41.1"
    }
  }
}
