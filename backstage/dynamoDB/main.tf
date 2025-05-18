resource "aws_dynamodb_table" "regras_negocio" {
  name           = var.table_name
  billing_mode   = "PROVISIONED"
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity
  hash_key       = var.hash_key.name

  # Atributo principal
  attribute {
    name = var.hash_key.name
    type = var.hash_key.type
  }

  # Atributos dos GSIs
  dynamic "attribute" {
    for_each = { for gsi in var.global_secondary_indexes : gsi.hash_key.name => gsi.hash_key.type }
    content {
      name = attribute.key
      type = attribute.value
    }
  }

  dynamic "global_secondary_index" {
    for_each = var.global_secondary_indexes
    content {
      name               = global_secondary_index.value.name
      hash_key           = global_secondary_index.value.hash_key.name
      projection_type    = global_secondary_index.value.projection_type
      read_capacity      = global_secondary_index.value.read_capacity
      write_capacity     = global_secondary_index.value.write_capacity
    }
  }

  tags = var.tags
}
