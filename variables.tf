variable "bucket_name" {
  description = "The name of the S3 bucket to create"
  type        = string
  nullable    = true
  default     = null
}

variable "bucket_prefix" {
  description = "The prefix to apply to the S3 bucket name"
  type        = string
  nullable    = true
  default     = null
}

variable "bucket_payment_payer" {
  description = "The payer for S3 bucket request payment configuration"
  type        = string
  default     = "Requester"
}
