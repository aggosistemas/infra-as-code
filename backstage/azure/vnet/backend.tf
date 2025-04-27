terraform {
  backend "s3" {
    bucket         = "terraform-bucket-status"
    key            = "terraform/state/vnet-azure.tfstate"
    region         = "ca-central-1"
    encrypt        = true
    dynamodb_table = "terraform-lock-table"
  }
}
