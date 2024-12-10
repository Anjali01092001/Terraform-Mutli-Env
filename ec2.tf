#key-pair
#vpc
#security-groups

resource "aws_key_pair" "terra-key" {
  key_name = "tws-terra-key"
  public_key = file("D:/Projects/terraform-infra/terra-key.pub")
}

#resourse, resource-type , reference-name
resource "aws_default_vpc" "default" {
  
}

resource "aws_security_group" "twssecurity" {
  name = "allow-ports"
  description = "this is for inbound and outbound rules"
  vpc_id = aws_default_vpc.default.id    #interpolation

  #incoming
  ingress {
    description = "ssh"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  #outgoing
  egress {
    description = "outgoing internet"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "terra-instance" {
  ami = "ami-053b12d3152c0cc71"
  instance_type = "t2.micro"
  key_name = aws_key_pair.terra-key.key_name
  security_groups = [aws_security_group.twssecurity.name]
  tags = {
    Name = "terraform-automate"
  }
}