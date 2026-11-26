provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "security_alert_bucket" {
  bucket = "security-alert-bucket-2026"
}

resource "aws_s3_bucket_acl" "security_alert_acl" {
  bucket = aws_s3_bucket.security_alert_bucket.id
  acl    = "public-read"
}
