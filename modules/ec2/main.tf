resource "aws_instance" "ec2" {
  count                  = 2
  ami                    = "ami-091138d0f0d41ff90"
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group]
  key_name               = var.key_name

  tags = {
    Name = "Dev-Server-${count.index + 1}"
  }
}
