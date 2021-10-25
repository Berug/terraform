resource "aws_vpc" "training_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  tags = {
    Name    = "training-vpc-1"
    Project = "Training"
  }
}
resource "aws_subnet" "training_subnet1" {
  vpc_id            = aws_vpc.training_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name    = "training-subnet-1"
    Project = "Training"
  }
}
resource "aws_subnet" "training_subnet2" {
  vpc_id            = aws_vpc.training_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1b"
  tags = {
    Name    = "training-subnet-2"
    Project = "Training"
  }
}
resource "aws_subnet" "training_subnet3" {
  vpc_id            = aws_vpc.training_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-east-1c"
  tags = {
    Name    = "training-subnet-3"
    Project = "Training"
  }
}
resource "aws_internet_gateway" "training_internet_gateway" {
  vpc_id = aws_vpc.training_vpc.id
  tags = {
    Name    = "training-gtw-1"
    Project = "Training"
  }
}
resource "aws_route_table" "training_route_table" {
  vpc_id = aws_vpc.training_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.training_internet_gateway.id
  }
  tags = {
    Name    = "training-routetb-1"
    Project = "Training"
  }

}
resource "aws_route_table_association" "training_rtassociation1" {
  subnet_id      = aws_subnet.training_subnet1.id
  route_table_id = aws_route_table.training_route_table.id
}
resource "aws_route_table_association" "training_rtassociation2" {
  subnet_id      = aws_subnet.training_subnet2.id
  route_table_id = aws_route_table.training_route_table.id
}
resource "aws_route_table_association" "training_rtassociation3" {
  subnet_id      = aws_subnet.training_subnet3.id
  route_table_id = aws_route_table.training_route_table.id
}
