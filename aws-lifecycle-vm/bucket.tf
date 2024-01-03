resource "aws_s3_bucket" "bucket" {
  bucket = "marco-qa-life-cycle-test"

  lifecycle {
    create_before_destroy = true
    ignore_changes = [ tags ]
  }

  tags = {
    test = "vscode"
  }
}