variable "resource_group_name" {
  description = "Nome do Resource Group a ser criado."
  type        = string
}

variable "location" {
  description = "Região da Azure onde os recursos serão criados."
  type        = string
  default     = "brazilsouth"
}

variable "vnet_name" {
  description = "Nome da Virtual Network (VNet) a ser criada."
  type        = string
}

variable "vnet_address_space" {
  description = "Faixa de IPs (CIDR) da VNet."
  type        = string
}

variable "subnet_name" {
  description = "Nome da Subnet a ser criada dentro da VNet."
  type        = string
}

variable "subnet_address_prefix" {
  description = "Faixa de IPs (CIDR) da Subnet."
  type        = string
}

variable "nsg_name" {
  description = "Nome do Network Security Group (NSG) a ser criado."
  type        = string
}
