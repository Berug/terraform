variable "region" {
 default = "us-east-1"
}
variable "vpc_cidr" {
  default = "10.10.0.0/16"
}
variable "subnet_cidr" {
  type    = list
  default = ["10.10.11.0/24", "10.10.12.0/24", "10.10.13.0/24", "10.10.14.0/24", "10.10.15.0/24", "10.10.16.0/24"]
}
variable "azs" {
   type    = list
   default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}
data "aws_availability_zones" "azs"{

}