provider "aws" {
  region = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.7.2"
    }
  }
}
