resource "azurerm_postgresql_flexible_server" "db" {
  name                   = var.db_name
  location               = var.location
  resource_group_name    = var.resource_group_name
  version                = "14"
  administrator_login    = var.db_username
  administrator_password = var.db_password

  storage_mb = 32768

  sku_name = "B_Standard_B1ms"

  tags = {
    environment = var.environment
  }
}

resource "azurerm_postgresql_flexible_server_firewall_rule" "allow_internal" {
  name             = "allow-internal"
  server_id        = azurerm_postgresql_flexible_server.db.id
  start_ip_address = "10.0.2.0"
  end_ip_address   = "10.0.2.255"
}

