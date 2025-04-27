variable "resource_group_name" {
  description = "Nome do Resource Group onde a VM será criada."
  type        = string
}

variable "location" {
  description = "Região da Azure onde a VM será criada."
  type        = string
  default     = "brazilsouth"
}

variable "vnet_name" {
  description = "Nome da Virtual Network existente."
  type        = string
}

variable "subnet_name" {
  description = "Nome da Subnet existente."
  type        = string
}

variable "nsg_name" {
  description = "Nome do Network Security Group existente."
  type        = string
}

variable "public_ip_name" {
  description = "Nome do recurso de IP Público a ser criado."
  type        = string
}

variable "nic_name" {
  description = "Nome do recurso Network Interface (NIC) a ser criado."
  type        = string
}

variable "vm_name" {
  description = "Nome da Máquina Virtual."
  type        = string
}

variable "vm_size" {
  description = "Tamanho/Tipo da Máquina Virtual."
  type        = string
  default     = "Standard_B1s"
}

variable "admin_username" {
  description = "Nome de usuário administrador para login SSH na VM."
  type        = string
  default     = "azureuser"
}

variable "ssh_key_name" {
  description = "Nome do arquivo da chave SSH pública (sem extensão .pub)."
  type        = string
}
