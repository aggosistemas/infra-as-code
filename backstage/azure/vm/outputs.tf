# Output do IP público da VM
output "public_ip_address" {
  description = "O endereço IP público da máquina virtual."
  value       = azurerm_public_ip.public_ip.ip_address
}

# Output do nome da máquina virtual
output "vm_name" {
  description = "O nome da máquina virtual provisionada."
  value       = azurerm_linux_virtual_machine.vm.name
}

# Output do ID da máquina virtual
output "vm_id" {
  description = "O ID da máquina virtual provisionada."
  value       = azurerm_linux_virtual_machine.vm.id
}
