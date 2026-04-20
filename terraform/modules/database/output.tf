output "db_endpoint" {
  value     = azurerm_postgresql_flexible_server.db.fqdn
  sensitive = true
}

output "db_name" {
  value = azurerm_postgresql_flexible_server.db.name
}

