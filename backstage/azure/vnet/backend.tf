terraform {
  backend "s3" {
    bucket         = "terraform-bucket-status"
    key            = "terraform/state/vnet-azure-pipe.tfstate"
    region         = "ca-central-1"
    encrypt        = true

  }
}
