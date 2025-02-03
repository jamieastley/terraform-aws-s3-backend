output "bucket_name" {
  value       = module.example_backend.bucket_name
  description = "The name of the S3 bucket which has been created"
}

output "table_names" {
  value       = [for table in module.example_backend.table_names : table]
  description = "The names of the DynamoDB tables which have been created"
}
