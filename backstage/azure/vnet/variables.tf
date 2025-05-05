
variable "resource_group_name" {
  description = "Nome do Resource Group a ser criado."
  type        = string
  default     = "resourcegroup-pequistore"
}

variable "location" {
  description = "Região da Azure onde os recursos serão criados."
  type        = string
  default     = "brazilsouth"
}

variable "vnet_name" {
  description = "Nome da Virtual Network (VNet) a ser criada."
  type        = string
  default     = "virtualnet-pequistore"
}

variable "vnet_address_space" {
  description = "Faixa de IPs (CIDR) da VNet."
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_name" {
  description = "Nome da Subnet a ser criada dentro da VNet."
  type        = string
  default     = "subnet-priv-pequistore"
}

variable "subnet_address_prefix" {
  description = "Faixa de IPs (CIDR) da Subnet."
  type        = string
  default     = "10.0.1.0/24"
}

variable "nsg_name" {
  description = "Nome do Network Security Group (NSG) a ser criado."
  type        = string
  default     = "networksg-projeto-vm"
}
