#####################
##creacion  de tags##
#####################
locals {
  required_tags = {
    environent   = upper(var.environment),
    project_name = upper(var.project_name),
    country      = upper(var.country)
  }

  registry_name = lower("${var.project_name}${var.environment}${var.country}acr")
}

###################
##creacion de ECR##
###################

resource "azurerm_container_registry" "container_registry" {
  resource_group_name = var.resource_group_name

  name                          = local.registry_name
  location                      = var.location
  sku                           = "Standard"
  admin_enabled                 = true
  # public_network_access_enabled = false

  tags = local.required_tags
}
