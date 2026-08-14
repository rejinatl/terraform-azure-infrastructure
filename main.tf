module "resource_group" {
  source      = "./modules/resource-group"
  name        = var.rg_name
  location    = var.azure_region
  environment = var.environment
}