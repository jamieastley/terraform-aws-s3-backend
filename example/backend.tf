terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.22"
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
  source      = "../"
  bucket_name = var.bucket_name
  dynamo_tables = [
    {
      table_name   = "dev"
      billing_mode = "PAY_PER_REQUEST"
      hash_key     = "LockID"
      attribute = [{
        name = "LockID"
        type = "S"
      }]
    },
    {
      table_name   = "prod"
      billing_mode = "PAY_PER_REQUEST"
      hash_key     = "LockID"
      attribute = [{
        name = "LockID"
        type = "S"
      }]
    }
  ]
}