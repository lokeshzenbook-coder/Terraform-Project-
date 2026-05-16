resource "aws_instance" "ec2" {
  count                  = 2
  ami                    = "ami-0f58b397bc5c1f2e8"
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group]
  key_name               = var.key_name

  tags = {
    Name = "Dev-Server-${count.index + 1}"
  }
}
