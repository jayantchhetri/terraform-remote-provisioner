resource "aws_security_group" "mysg"{
    name = "Custom Security Group"
    ingress {
    description = "SSH ACCESS"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    }
ingress {
    description = "SSH ACCESS"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    }
        egress {
        description = "All Traffic"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        }
}
