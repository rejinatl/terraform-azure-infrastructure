variable "rg_name" {
  type        = string
  default     = "rg-my-application"
  description = "Azure Resource Group name"
}

variable "azure_region" {
  description = "Azure region"
  type        = string
  default     = "West Europe"
}

variable "environment" {
  type        = string
  description = "Deployment environment name"
  default     = "dev"

  validation {
    condition     = contains(["dev", "test", "prod"], var.environment)
    error_message = "Environment must be dev, test, or prod."
  }
}
