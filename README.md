# terraform-s3-backend

A Terraform module to create an S3 bucket and DynamoDB table for use as a backend for Terraform state files.

## Usage

Create a `main.tf` file in your project directory with the following content:

```terraform
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.84"
    }
  }
}

module "example_backend" {
  source           = "<path to module>"
  app_name         = "<app_name>"
  bucket_name      = "<bucket_name>"
  environment_name = "<environment_name>"
  dynamo_tables    = [
    {
      table_name   = "<table_name>"
      billing_mode = "<billing_mode>"
      hash_key     = "<hash_key>"
      attribute = [{
        name = "<attribute_name>"
        type = "<attribute_type>"
      }]
    },
  ]
}
```
