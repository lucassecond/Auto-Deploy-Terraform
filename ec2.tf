resource "aws_instance" "VM-APACHE" {
  ami           = "ami-036841078a4b68e14"
  instance_type = "t2.micro"
  key_name      = "Lucas-Second-TF"
  vpc_security_group_ids = [
    aws_security_group.allow_ssh.id,
    aws_security_group.allow_http.id,
    aws_security_group.allow_egress.id
  ]
  user_data = file("startscript.sh")

  tags = {
    Name = "VM-APACHE"
  }
}
