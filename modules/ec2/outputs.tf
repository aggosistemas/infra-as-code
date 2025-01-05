output "instance_id" {
  description = "ID da instância EC2 criada"
  value       = aws_instance.ec2_instance.id
}

output "public_ip" {
  description = "Endereço IP público da instância"
  value       = aws_instance.ec2_instance.public_ip
}

output "private_ip" {
  description = "Endereço IP privado da instância"
  value       = aws_instance.ec2_instance.private_ip
}

output "private_key" {
  description = "Chave privada gerada para a instância EC2"
  value       = tls_private_key.ssh_key.private_key_pem
  sensitive   = true
}

output "public_key" {
  description = "Chave pública gerada para a instância EC2"
  value       = tls_private_key.ssh_key.public_key_openssh
}
