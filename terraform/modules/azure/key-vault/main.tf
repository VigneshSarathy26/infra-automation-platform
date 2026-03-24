resource "azurerm_key_vault" "main" {
  name                = var.vault_name
  location            = var.location
  resource_group_name = var.resource_group
  tenant_id           = var.tenant_id
  sku_name            = "standard"
}
