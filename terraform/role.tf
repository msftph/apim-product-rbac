data "azurerm_subscription" "primary" {
}

resource "azurerm_role_definition" "products" {
    for_each    = toset(var.products)
    name        = "${each.value} Admin Role"
    scope       = data.azurerm_subscription.primary.id
    description = "Azure API Management ${each.value} Admin Role"

    permissions {
        actions = [
            "Microsoft.ApiManagement/service/*/read",
            "Microsoft.ApiManagement/service/read",
            "Microsoft.Authorization/*/read",
            "Microsoft.Insights/alertRules/*",
            "Microsoft.ResourceHealth/availabilityStatuses/read",        
            "Microsoft.Resources/subscriptions/resourceGroups/read",
            "Microsoft.Support/*"
        ]

        not_actions = [            
            "Microsoft.ApiManagement/service/users/keys/read",
            "Microsoft.ApiManagement/service/delete",
            "Microsoft.ApiManagement/service/write",
            "Microsoft.ApiManagement/service/products/delete",
            "Microsoft.Resources/deployments/*"
        ]
    }
}