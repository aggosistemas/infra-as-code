variable "table_name" {
  description = "Nome da tabela DynamoDB"
  type        = string
}

variable "hash_key" {
  description = "Atributo usado como chave de partição (hash key)"
  type        = string
}

variable "range_key" {
  description = "Atributo usado como range key (opcional)"
  type        = string
  default     = null
}

variable "read_capacity" {
  description = "Capacidade de leitura"
  type        = number
  default     = 5
}

variable "write_capacity" {
  description = "Capacidade de escrita"
  type        = number
  default     = 5
}

variable "attribute_definitions" {
  description = "Lista de atributos com nome e tipo (S, N ou B)"
  type = list(object({
    name = string
    type = string
  }))
}

variable "local_secondary_indexes" {
  description = "Lista de LSI (opcional)"
  type = list(object({
    name               = string
    range_key          = string
    projection_type    = string
    non_key_attributes = optional(list(string))
  }))
  default = []
}

variable "global_secondary_indexes" {
  description = "Lista de GSI (opcional)"
  type = list(object({
    name               = string
    hash_key           = string
    range_key          = optional(string)
    read_capacity      = number
    write_capacity     = number
    projection_type    = string
    non_key_attributes = optional(list(string))
  }))
  default = []
}
