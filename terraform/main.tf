provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "pr_gate_violation" {
  bucket = "pr-gate-violation-bucket-2026"
}

resource "aws_s3_bucket_acl" "pr_gate_violation_acl" {
  bucket = aws_s3_bucket.pr_gate_violation.id
  acl    = "public-read"
}
