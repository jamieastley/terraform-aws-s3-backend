variable "app_name" {
  description = "The name of the app service that's being deployed. Name will be concatenated into resource names"
  type        = string
  nullable    = false
}

variable "bucket_name" {
  description = "The name of the S3 bucket to create"
  type        = string
}

variable "environment_name" {
  description = "The name of the environment. Value will also be applied as tag to each resource."
  type        = string
}

variable "dynamo_table_name" {
  description = "The name of the DynamoDB table to create"
  type        = string
}
