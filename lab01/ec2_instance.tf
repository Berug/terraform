resource "aws_instance" "training_instance" {
  count = length(var.subnet_private_ip)
  
  ami                         = var.ami_id
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.training_subnet1.id
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.training_SG.id]
  private_ip                  = element(var.subnet_private_ip, count.index)
  key_name                    = "class1"

  tags = {
    Name    = "training-instance-${count.index + 1}"
    Project = "Training"
  }
}
