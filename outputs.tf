output "bucket_name" {
  description = "The name of the S3 bucket which has been created"
  value       = aws_s3_bucket.bucket.bucket
}

output "table_names" {
  description = "The names of the DynamoDB tables which have been created"
  value       = [for table in aws_dynamodb_table.terraform_locks : table.name]
}