terraform {
  backend "local" {}

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.76.0"
    }
  }
}

provider "aws" {
  # partial configuration, reads keys from env vars
  region = var.aws_region
}

module "example_backend" {
  source            = "../"
  app_name          = var.app_name
  bucket_name       = var.bucket_name
  environment_name  = var.environment_name
  dynamo_table_name = var.table_name
}