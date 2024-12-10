resource "aws_instance" "terra-instance" {
  ami = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = "${var.my-env}-terraform-automate"
  }
}