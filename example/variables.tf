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
  description = "The name of the environment"
  type        = string
}
