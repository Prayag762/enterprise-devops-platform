resource "aws_s3_bucket" "app_bucket" {

  bucket = "prayag762-enterprise-devops-platform"

  tags = {
    Name = "enterprise-devops-storage"
  }
}

resource "aws_s3_bucket_versioning" "versioning" {

  bucket = aws_s3_bucket.app_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}
