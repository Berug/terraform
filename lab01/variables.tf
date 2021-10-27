variable "region" {
  description = "region a utilizar en aws"
  #default     = "us-east-1"
}
variable "vpc_cdir" {
  description = "cdir de la vpc"
  #default     = "10.0.0.0/16"
}
variable "subnet1_cidr" {
  description = "cdir de la subnet1"
  #default     = "10.0.1.0/24"
}
variable "availability_zone_subnet1" {
  description = "availability zone subnet 1"
  #default     = "us-east-1a"
}
variable "availability_zone_subnet2" {
  description = "availability zone subnet 1"
  #default     = "us-east-1b"
}
variable "availability_zone_subnet3" {
  description = "availability zone subnet 1"
  #default     = "us-east-1c"
}
variable "ami_id" {
  type        = string
  description = "ami id para rhel8"
  #default     = "ami-02e136e904f3da870"
}
