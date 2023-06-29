terraform {
  backend "azurerm" {
    resource_group_name  = "helm-sandbox-glo-rg"
    storage_account_name = "testgithubactionstf"
    container_name       = "qatfstate"
    key                  = "qa.tfstate"
  }
}