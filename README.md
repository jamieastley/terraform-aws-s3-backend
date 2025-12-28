# terraform-s3-backend

A Terraform module to create an S3 bucket for use as a backend or general storage.

## Usage

Create a `main.tf` file in your project directory with the following content:

```terraform
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.27.0"
    }
  }
}

module "s3_backend" {
  source                = "<path to module>"
  bucket_name           = "<bucket_name>"           # (Optional if using bucket_prefix)
  bucket_prefix         = "<bucket_prefix>"         # (Optional if using bucket_name)
  bucket_payment_payer  = "<Requester|BucketOwner>" # Optional, defaults to "Requester"
}
```

## Inputs

- `bucket_name` (string, optional): The name of the S3 bucket to create. If not set, `bucket_prefix` must be provided.
- `bucket_prefix` (string, optional): The prefix to apply to the S3 bucket name. If not set, `bucket_name` must be provided.
- `bucket_payment_payer` (string, optional): The payer for S3 bucket request payment configuration. Defaults to `Requester`.

## Outputs

- `bucket_name`: The name of the S3 bucket which has been created.
- `bucket_arn`: The ARN of the S3 bucket which has been created.

## Features

- S3 bucket with versioning enabled
- Public access block enabled
- Request payment configuration
- Force destroy enabled (bucket can be deleted even if not empty)
