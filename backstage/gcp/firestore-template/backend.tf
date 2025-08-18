terraform {
  backend "s3" {
    bucket         = "terraform-bucket-status"
    key            = "terraform/state/firestore-log-ia-agent.tfstate"
    region         = "ca-central-1"
    encrypt        = true
  }
}
