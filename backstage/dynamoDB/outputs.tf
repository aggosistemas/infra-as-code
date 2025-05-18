output "table_name" {
  description = "Nome da tabela DynamoDB criada"
  value       = aws_dynamodb_table.regras_negocio.name
}

output "table_arn" {
  description = "ARN da tabela DynamoDB criada"
  value       = aws_dynamodb_table.regras_negocio.arn
}

output "table_id" {
  description = "ID da tabela DynamoDB"
  value       = aws_dynamodb_table.regras_negocio.id
}

output "gsi_names" {
  description = "Lista de nomes dos Global Secondary Indexes (GSIs)"
  value       = aws_dynamodb_table.regras_negocio.global_secondary_index[*].name
}
