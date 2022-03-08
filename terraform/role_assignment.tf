/* resource "azurerm_role_assignment" "products" {

    for_each            = toset(var.products)

    name               = "00000000-0000-0000-0000-000000000000"
    scope              = azurerm_api_management.default.id
    role_definition_id = azurerm_role_definition.products[each.value].role_definition_resource_id
  
    principal_id       = azuread_group.products[each.value].object_id
    
} */