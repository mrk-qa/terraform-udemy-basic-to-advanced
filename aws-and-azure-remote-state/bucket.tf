resource "aws_s3_bucket" "bucket" {
  bucket = "remote-state-tf-marco-qa.amazonaws.com"
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}