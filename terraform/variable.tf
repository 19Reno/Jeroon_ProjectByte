variable "location" {
  description = "Azure region"
  type        = string
  default     = "southindia"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rgfor8byte"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "staging"
}

variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
  default     = "vnet-main"
}

variable "vnet_cidr" {
  description = "CIDR block for VNet"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_name" {
  description = "Name of public subnet"
  type        = string
  default     = "subnet-public"
}

variable "public_subnet_cidr" {
  description = "CIDR for public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_name" {
  description = "Name of private subnet"
  type        = string
  default     = "subnet-private"
}

variable "private_subnet_cidr" {
  description = "CIDR for private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "vm_name" {
  description = "Name of the VM"
  type        = string
  default     = "vm-app"
}

variable "vm_size" {
  description = "Size of the VM"
  type        = string
  default     = "Standard_B2ats_v2"
}

variable "admin_username" {
  description = "VM admin username"
  type        = string
  default     = "azureuser"
}

variable "db_name" {
  description = "PostgreSQL server name"
  type        = string
  default     = "db-8byte-san"

}

variable "db_username" {
  description = "Database admin username"
  type        = string
  default     = "dbadmin"
}

variable "db_password" {
  description = "Database admin password"
  type        = string
  sensitive   = true
}

variable "lb_name" {
  description = "Name of the load balancer"
  type        = string
  default     = "lb-main"
}

variable "db_location" {
  description = "Location for PostgreSQL"
  type        = string
  default     = "southafricanorth"
}
