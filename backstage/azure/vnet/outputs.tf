# Output do Resource Group
output "resource_group_name" {
  description = "Nome do Resource Group criado."
  value       = azurerm_resource_group.rg.name
}

# Output da Virtual Network
output "vnet_name" {
  description = "Nome da Virtual Network criada."
  value       = azurerm_virtual_network.vnet.name
}

# Output da Subnet
output "subnet_name" {
  description = "Nome da Subnet criada."
  value       = azurerm_subnet.subnet.name
}

# Output do Network Security Group
output "nsg_name" {
  description = "Nome do Network Security Group criado."
  value       = azurerm_network_security_group.nsg.name
}

output "subnet_id" {
  description = "ID da Subnet criada"
  value       = azurerm_subnet.subnet.id
}

output "nsg_id" {
  description = "ID do Network Security Group criado"
  value       = azurerm_network_security_group.nsg.id
}
