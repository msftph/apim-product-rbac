resource "azurerm_api_management" "default" {
  name                = "product-rbac-sample"
  location            = azurerm_resource_group.default.location
  resource_group_name = azurerm_resource_group.default.name
  publisher_name      = "My Company"
  publisher_email     = "company@terraform.io"  
  sku_name            = "Developer_1"
}

resource "azurerm_api_management_product" "products" {
  for_each              = toset(var.products)

  product_id            = each.value
  api_management_name   = azurerm_api_management.default.name
  resource_group_name   = azurerm_resource_group.default.name
  display_name          = each.value
  subscription_required = true
  approval_required     = false
  published             = true
}
