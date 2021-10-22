resource "aws_security_group" "training_SG" {
    name = "sg_ping_ssh"
    vpc_id = aws_vpc.training_vpc.id
    description = "Permitir ping ssh"
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = -1
        to_port = -1
        protocol = "icmp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "training-sg-1" 
        Project = "Training"
    }
}
