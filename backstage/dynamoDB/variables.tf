variable "table_name" {
  description = "Nome da tabela DynamoDB"
  type        = string
  default     = "RegrasNegocio"
}

variable "hash_key" {
  description = "Chave primária (partition key) da tabela"
  type = object({
    name = string
    type = string
  })
  default = {
    name = "id"
    type = "S"
  }
}

variable "global_secondary_indexes" {
  description = "Lista de índices GSI a serem criados"
  type = list(object({
    name            = string
    hash_key        = object({
      name = string
      type = string
    })
    projection_type = string
    read_capacity   = number
    write_capacity  = number
  }))
  default = [
    {
      name = "status-index"
      hash_key = {
        name = "status"
        type = "S"
      }
      projection_type = "ALL"
      read_capacity   = 5
      write_capacity  = 5
    }
  ]
}

variable "read_capacity" {
  description = "Capacidade de leitura provisionada"
  type        = number
  default     = 5
}

variable "write_capacity" {
  description = "Capacidade de escrita provisionada"
  type        = number
  default     = 5
}

variable "tags" {
  description = "Tags aplicadas à tabela"
  type        = map(string)
  default = {
    Projeto     = "CadastroRegras"
    Responsavel = "EquipeNegocio"
    Ambiente    = "dev"
  }
}
