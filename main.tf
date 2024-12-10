module "development"{
    source = "./aws-modules"
    my-env = "dev"
    instance_type = "t2.micro"
    ami_id = "ami-053b12d3152c0cc71"
    instance_count = 1
    bucket_count = 1
}

module "staging" {
  source = "./aws-modules"
  my-env = "stag"
  instance_type = "t2.micro"
  ami_id = "ami-053b12d3152c0cc71"
  instance_count = 1
  bucket_count = 1
}

module "production" {
  source = "./aws-modules"
  my-env = "prod"
  instance_type = "t2.micro"
  ami_id = "ami-053b12d3152c0cc71"
  instance_count = 3
  bucket_count = 2
}