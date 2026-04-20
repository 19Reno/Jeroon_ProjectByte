terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
}

module "network" {
  source              = "./modules/network"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  environment         = var.environment
  vnet_name           = var.vnet_name
  vnet_cidr           = var.vnet_cidr
  public_subnet_name  = var.public_subnet_name
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_name = var.private_subnet_name
  private_subnet_cidr = var.private_subnet_cidr
}

module "compute" {
  source              = "./modules/compute"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  environment         = var.environment
  vm_name             = var.vm_name
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  subnet_id           = module.network.private_subnet_id
}

#module "database" {
  #source              = "./modules/database"
  #location            = var.db_location
  #resource_group_name = azurerm_resource_group.main.name
  #environment         = var.environment
  #db_name             = var.db_name
  #db_username         = var.db_username
  #db_password         = var.db_password
 # subnet_id           = module.network.private_subnet_id
#}

module "loadbalancer" {
  source              = "./modules/loadbalancer"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  environment         = var.environment
  lb_name             = var.lb_name
}
