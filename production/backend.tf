terraform {
  backend "azurerm" {
    resource_group_name  = "test-gh-actions-tf"
    storage_account_name = "testgithubactionstfprd"
    container_name       = "prdtfstate"
    key                  = "prd.tfstate"
  }
}