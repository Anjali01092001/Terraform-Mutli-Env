output "my_ec2_ip" {
    value = aws_instance.terra-instance.private_ip
}