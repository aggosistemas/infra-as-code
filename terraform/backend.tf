terraform {
  backend "s3" {
    bucket         = "terraform-bucket-status"      # Substitua pelo nome do bucket S3
    key            = "terraform/state/global.tfstate"
    region         = "ca-central-1"                    # Região do bucket S3
    encrypt        = true                           # Habilita criptografia do estado
    dynamodb_table = "terraform-lock-table"         # Para controle de bloqueios
  }
}
