output "public_ip_address" {
  description = "Endereço IP público alocado para a VM"
  value       = azurerm_public_ip.public_ip.ip_address
}

output "vm_name" {
  description = "Nome da máquina virtual provisionada"
  value       = azurerm_linux_virtual_machine.vm.name
}

output "vm_id" {
  description = "ID completo da VM"
  value       = azurerm_linux_virtual_machine.vm.id
}
