variable "resource_group_name" {
  description = "Nome do Resource Group onde a VM será criada."
  type        = string
  default     = "resourcegroup-pequistore"
}

variable "location" {
  description = "Região da Azure onde a VM será criada."
  type        = string
  default     = "brazilsouth"
}

variable "vnet_name" {
  description = "Nome da Virtual Network existente."
  type        = string
  default     = "virtualnet-pequistore"
}

variable "subnet_name" {
  description = "Nome da Subnet existente."
  type        = string
  default     = "subnet-priv-pequistore"
}

variable "subnet_id" {
  description = "ID da Subnet existente."
  type        = string
  default     = "/subscriptions/***/resourceGroups/resourcegroup-pequistore/providers/Microsoft.Network/virtualNetworks/virtualnet-pequistore/subnets/subnet-priv-pequistore"
}

variable "nsg_name" {
  description = "Nome do Network Security Group existente."
  type        = string
  default     = "networksg-projeto-vm"
}

variable "nsg_id" {
  description = "ID do Network Security Group existente."
  type        = string
  default     = "/subscriptions/***/resourceGroups/resourcegroup-pequistore/providers/Microsoft.Network/networkSecurityGroups/networksg-projeto-vm"
}

variable "public_ip_name" {
  description = "Nome do recurso de IP Público a ser criado."
  type        = string
  default     = "subnet-priv-pequistore"
}

variable "nic_name" {
  description = "Nome do recurso Network Interface (NIC) a ser criado."
  type        = string
  default     = "nic-pequistore"
}

variable "vm_name" {
  description = "Nome da Máquina Virtual."
  type        = string
  default     = "vm-pequi-pipeline"
}

variable "vm_size" {
  description = "Tamanho/Tipo da Máquina Virtual."
  type        = string
  default     = "Standard_B1s"
}

variable "admin_username" {
  description = "Nome do usuário administrador da VM."
  type        = string
  default     = "ubuntu"
}

variable "admin_password" {
  description = "Senha do usuário administrador da VM."
  type        = string
  sensitive   = true
}