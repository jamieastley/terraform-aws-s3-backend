output "bucket_name" {
  description = "The name of the S3 bucket which has been created"
  value = aws_s3_bucket.bucket.bucket
}

output "table_name" {
  description = "The name of the DynamoDB table which has been created"
  value = aws_dynamodb_table.terraform_locks.name
}