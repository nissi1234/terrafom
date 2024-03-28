# Creating EC2 Instance
resource "aws_instance" "wordpress4" {
  ami                         = "ami-009e46eef82e25fef"
  instance_type               = "t2.micro"
  key_name                    = "MS"
  vpc_security_group_ids      = [aws_security_group.ec2-SG.id]
  subnet_id                   = aws_subnet.subnet-1.id
  associate_public_ip_address = true
  user_data                   = file("userdata.sh")

  tags = {
    Name = "wordpress4"
  }
}
