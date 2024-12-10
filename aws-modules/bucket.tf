resource "aws_s3_bucket" "bucket" {
  bucket = "${var.my-env}-creating-buckets"
  tags = {
    Name = "${var.my-env}-creating-buckets"
    environment = var.my-env
  }
}