# Gera uma chave privada usando Terraform
resource "tls_private_key" "ssh_key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

# Cria um Key Pair no AWS EC2 usando a chave pública gerada
resource "aws_key_pair" "generated_key" {
  key_name   = var.key_name
  public_key = tls_private_key.ssh_key.public_key_openssh
}

# Salva a chave privada no disco local
resource "local_file" "private_key" {
  filename = "${path.module}/id_rsa" # Salva a chave privada no diretório do módulo
  content  = tls_private_key.ssh_key.private_key_pem
}

# Criação da instância EC2
resource "aws_instance" "ec2_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = aws_key_pair.generated_key.key_name
  subnet_id     = var.subnet_id
  vpc_security_group_ids = var.security_group_ids

  tags = var.tags
}
