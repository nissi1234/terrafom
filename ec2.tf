# Creating EC2 Instance
resource "aws_instance" "wordpress4" {
  ami                         = "ami-02d7fd1c2af6eead0"
  instance_type               = "t2.micro"
  key_name                    = "master1"
  vpc_security_group_ids      = [aws_security_group.ec2-SG.id]
  subnet_id                   = aws_subnet.subnet-1.id
  associate_public_ip_address = true
  user_data                   = file("userdata.sh")

  tags = {
    Name = "wordpress4"
  }
}
