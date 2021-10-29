resource "aws_instance" "training_server1" {
  ami                         = "ami-02e136e904f3da870"
  instance_type               = "t2.micro"
  vpc_security_group_ids      = [aws_security_group.route_allow_http_ssh.id]
  subnet_id                   = aws_subnet.training_subnet1.id
  associate_public_ip_address = true
  private_ip                  = "10.10.10.11"
  key_name                    = aws_key_pair.training_key.id
  depends_on                  = [
    aws_internet_gateway.training_ig
  ]
  user_data = file("userdata.sh")
  tags      = {
    Name    = "training-server-1"
    Project = "Training"
  }
}
resource "aws_instance" "training_server2" {
  ami                         = "ami-02e136e904f3da870"
  instance_type               = "t2.micro"
  vpc_security_group_ids      = [aws_security_group.route_allow_http_ssh.id]
  subnet_id                   = aws_subnet.training_subnet1.id
  associate_public_ip_address = true
  private_ip                  = "10.10.10.12"
  key_name                    = aws_key_pair.training_key.id
  depends_on                  = [
    aws_internet_gateway.training_ig
  ]
  user_data = file("userdata.sh")
  tags      = {
    Name    = "training-server-2"
    Project = "Training"
  }
}