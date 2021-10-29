provider "aws" {
  region  = var.region
  profile = "default"
}
resource "aws_vpc" "training_vpc_1" {
  cidr_block           = var.vpc_cidr
  instance_tenancy     = "default"
  enable_dns_hostnames = true
  tags                 = {
    Name    = "training-vpc-1"
    Project = "Training"
  }
}
resource "aws_subnet" "training_subnet1" {
  vpc_id            = aws_vpc.training_vpc_1.id
  cidr_block        = "10.10.10.0/24"
  availability_zone = "us-east-1a"
  tags              = {
    Name    = "training-subnet-1"
    Project = "Training"
  }
}
# resource "aws_subnet" "training_subnets" {
# count             = length(data.aws_availability_zones.azs.names)-3
# availability_zone = element(data.aws_availability_zones.azs.names, count.index)
# cidr_block        = element(var.subnet_cidr, count.index)
# vpc_id            = aws_vpc.training_vpc_1.id
# tags              = {
# Name    = "training-subnet-${count.index + 1}"
# Project = "Training"
#   }
# }
resource "aws_internet_gateway" "training_ig" {
  vpc_id = aws_vpc.training_vpc_1.id
  tags   = {
    Name    = "training-ig"
    Project = "Training"
  }
}
resource "aws_route_table" "training_rt" {
  vpc_id = aws_vpc.training_vpc_1.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.training_ig.id
  }
  tags   = {
    Name    = "training-rt-public"
    Project = "Training"
  }
}
# resource "aws_route_table_association" "training_psubnet" {
# count          = length(var.subnet_cidr)-3
# subnet_id      = element(aws_subnet.training_subnets.*.id, count.index)
# route_table_id = aws_route_table.training_rt.id
# }
resource "aws_route_table_association" "training_psubnet" {
  subnet_id      = aws_subnet.training_subnet1.id
  route_table_id = aws_route_table.training_rt.id
}
