terraform {
  backend "azurerm" {
    resource_group_name  = "quickshot"
    storage_account_name = "jeroon8byte"
    container_name       = "8byte"
    key                  = "production/terraform.tfstate"
  }
}
