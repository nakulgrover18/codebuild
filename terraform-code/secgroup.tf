resource "aws_security_group" "test-sg" {
  name = "${var.prefix}"
  tags = {
        Name = "${var.prefix}"
  }
  description = "${var.prefix} SG"
  egress {
    from_port   = 0
    to_port     = 65535 # All outbound traffic
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
   }
   ingress {
     from_port   = 443
     to_port     = 443 # All outbound traffic
     protocol    = "TCP"
     cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_instance" "example" {
     ami = "ami-0b9f27b05e1de14e9"
     instance_type = "t2.micro"
     #security_groups = aws_security_group.test-sg
     vpc_security_group_ids = [aws_security_group.test-sg.id]
