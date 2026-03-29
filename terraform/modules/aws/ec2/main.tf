resource "aws_instance" "terraform-instance" {
  ami                    = var.ami
  instance_type          = "t2.medium"
  subnet_id              = var.subnet_id
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.terrafrom_sg.id]
  user_data              = file("./jenkins.sh")
  tags = {
    Name = "terraform-instance"
  }
}

output "PublicIP" {
  value = aws_instance.terraform-instance.public_ip
}

resource "aws_security_group" "terrafrom_sg" {
  vpc_id = var.vpc_id
  name   = "example-security-group"

  # Inbound rule for SSH
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # WARNING: Open to all IPs, restrict as needed
  }

  # Inbound rule for HTTP (optional, for web server)
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Outbound rule to allow all traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "terrafrom_sg"
  }
}
