output "loadbalancer_public_ip" {
  value = module.loadbalancer.public_ip
}

output "vm_private_ip" {
  value = module.compute.private_ip
}

#output "db_endpoint" {
 # value     = module.database.db_endpoint
  #sensitive = true
#}

output "vnet_id" {
  value = module.network.vnet_id
}
