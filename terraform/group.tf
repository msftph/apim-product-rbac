data "azuread_client_config" "current" {}

/* resource "azuread_group" "products" {
    for_each = toset(var.products)
    display_name = "Azure API Management Group ${each.value} Admin"
    owners = [
        data.azuread_client_config.current.object_id
    ]
    mail_enabled = false
} */