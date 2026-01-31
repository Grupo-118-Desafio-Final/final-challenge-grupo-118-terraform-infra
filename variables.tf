variable "resource_group_name" {
  description = "The name of the resource group where resources will be created"
  type        = string
  default     = "final-challange-grupo-118-rg"
}

variable "resource_group_location" {
  description = "The Azure region where resources will be created"
  type        = string
  default     = "East US"
}

variable "acr_name" {
  description = "The name of the Azure Container Registry"
  type        = string
  default     = "grupo118finalchallengeinfraacr"
}

variable "aks_name" {
  description = "The name of the AKS cluster"
  type        = string
  default     = "grupo118finalchallengeinfraaks"
}

variable "rabbitmq_name" {
  description = "The name of the RabbitMQ instance"
  type        = string
  default     = "grupo118finalchallengerabbitmq"
}

variable "rabbitmq_plan" {
  description = "The pricing plan for the RabbitMQ instance"
  type        = string
  default     = "lemming"
}

variable "rabbitmq_region" {
  description = "The region where the RabbitMQ instance will be deployed"
  type        = string
  default     = "azure-arm::eastus"
}

variable "cloudamqp_customer_api_key" {
  description = "The API key for CloudAMQP customer access"
  type        = string
}