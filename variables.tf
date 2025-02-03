variable "bucket_name" {
  description = "The name of the S3 bucket to create"
  type        = string
}


variable "dynamo_tables" {
  type = list(object({
    table_name   = string
    hash_key     = string
    billing_mode = string
    attribute = list(object({
      name = string
      type = string
    }))
  }))

}
