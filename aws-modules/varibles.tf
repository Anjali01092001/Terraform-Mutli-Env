variable "my-env" {
  description = "this is environment(dev,stag,production)"
  type = string
}

variable "ami_id" {
  description = "this is amiid of ec2"
  type = string
}

variable "instance_type" {
  description = "this is type of instance"
  type = string
}

variable "instance_count" {
  type = number
  description = "this is the number of instances"
}

variable "bucket_count" {
  type = number
  description = "this is the number of s3-buckets"
}