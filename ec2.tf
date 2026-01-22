resource "aws_instance" "app" {
  count         = 2
  ami           = "ami-019715e0d74f695be" # Use latest Amazon Linux 2
  instance_type = var.app_instance_type
  subnet_id     = aws_subnet.private_app[count.index].id
  security_groups = [aws_security_group.app_sg.id]
  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name

  tags = {
    Name = "app-server-${count.index}"
  }
}
