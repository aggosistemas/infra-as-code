terraform {
  backend "s3" {
    bucket         = "terraform-bucket-status"
    key            = "terraform/state/k8s-gcp.tfstate"
    region         = "ca-central-1"
    encrypt        = true
  }
}