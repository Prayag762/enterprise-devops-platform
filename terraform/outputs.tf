output "rds_endpoint" {
  value = aws_db_instance.mysql.endpoint
}

output "database_name" {
  value = aws_db_instance.mysql.db_name
}
output "bucket_name" {
  value = aws_s3_bucket.app_bucket.bucket
}
