terraform {
  backend "s3" {
    bucket  = "terraform-bucket-status"
    key     = "terraform/state/dynamo.tfstate"
    region  = "ca-central-1"
    encrypt = true
  }
}
