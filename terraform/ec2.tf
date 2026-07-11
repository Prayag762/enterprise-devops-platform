resource "aws_instance" "app_server" {

  ami           = "ami-0b6d9d3d33ba97d99"
  instance_type = "m7i-flex.large"

  key_name = var.key_name

  subnet_id = aws_subnet.public_1.id

  vpc_security_group_ids = [
    aws_security_group.ec2_sg.id
  ]

  associate_public_ip_address = true

  iam_instance_profile = aws_iam_instance_profile.profile.name

  user_data = file("userdata.sh")

  tags = {
    Name = "Enterprise-DevOps-App-Server"
  }
}
