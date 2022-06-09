provider "aws" {
  region  = var.aws_region
}

terraform {
  backend "s3" {
    bucket = "terraformargocd"
    key    = "us-east-1/tfstate.json"
    region = "us-east-1"
    dynamodb_table = "terraform-argocd"
    encrypt = true
  }
}

resource "random_id" "id" {
  byte_length = 2
}
