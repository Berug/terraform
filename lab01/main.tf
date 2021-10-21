resource "aws_vpc" "training_vpc"{
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "training-vpc-1" 
        Project = "Training"
    }
}
 