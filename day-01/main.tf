resource "aws_instance" "web" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name = "Hello AWS"
  }
}
