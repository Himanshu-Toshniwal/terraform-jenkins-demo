resource "aws_security_group" "sg1" {
  name       = "${var.Name}-sg"
  description = "Example security group"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
}
  ingress {
      from_port = 80
      to_port = 80
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"] 
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
}
  tags = {
    Name = "${var.Name}-sg"
  }
}

resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type
  security_groups = [aws_security_group.sg1.name]

  tags = {
    Name = var.Name
  }
}