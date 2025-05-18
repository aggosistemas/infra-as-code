terraform {
  backend "s3" {
    bucket         = "terraform-bucket-status"
    key            = "terraform/state/machinelearning.tfstate"
    region         = "ca-central-1"
    encrypt        = true
  }
}