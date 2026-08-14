# Create a resource group
resource "azurerm_resource_group" "main" {
  name     = var.name
  location = var.location

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
    Project     = "Infrastructure"
  }
}