terraform {
  backend "azurerm" {
    resource_group_name  = "github-actions-tf-poc-glo-rg"
    storage_account_name = "devgithubactionstfpoc"
    container_name       = "tfstate"
    key                  = "dev.tfstate"
  }
}