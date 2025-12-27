output "bucket_name" {
  description = "The name of the S3 bucket which has been created"
  value       = aws_s3_bucket.bucket.bucket
}
