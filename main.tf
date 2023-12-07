resource "azurerm_container_registry" "this" {
  name                = var.name
  resource_group_name = var.rg.name
  location            = var.rg.location
  sku                 = var.sku
  admin_enabled       = var.admin_enabled
  tags                = var.tags
  lifecycle {
    ignore_changes = [
      tags["business_unit"],
      tags["environment"],
      tags["product"],
      tags["subscription_type"],
      tags["environment_finops"]
    ]
  }
}
