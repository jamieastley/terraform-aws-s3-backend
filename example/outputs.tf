output "bucket_name" {
  value       = module.example_backend.bucket_name
  description = "The name of the S3 bucket which has been created"
}
