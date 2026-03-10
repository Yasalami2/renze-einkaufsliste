provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "frontend_bucket" {
  bucket = "renze-einkaufsliste-static-frontend" 
}

resource "aws_s3_bucket_public_access_block" "public_access" {
  bucket = aws_s3_bucket.frontend_bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}
