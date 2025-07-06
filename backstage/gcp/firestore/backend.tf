terraform {
  backend "s3" {
    bucket         = "terraform-bucket-status"
    key            = "terraform/state/firestore-gcp-pipeline.tfstate"
    region         = "ca-central-1"
    encrypt        = true
  }
}
