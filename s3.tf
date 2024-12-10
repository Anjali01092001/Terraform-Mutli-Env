resource "aws_s3_bucket" "bucket" {
  bucket = "creating-buckets"
  tags = {
    Name = "creating-buckets"
  }
}