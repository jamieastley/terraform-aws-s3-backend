terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  default_tags {
    tags = {
      app = "terraform-s3-backend-example"
    }
  }
}

module "example_backend" {
  source        = "../"
  bucket_name   = var.bucket_name
  bucket_prefix = null
}
