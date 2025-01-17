resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Permite o acesso SSH pela porta 22"

ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    
}

  tags = {
    Name = "Entrada SSH"
  }

}

resource "aws_security_group" "allow_http" {
  name        = "allow_http"
  description = "Permite o acesso HTTP pela porta 80"

ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    
}

  tags = {
    Name = "Entrada HTTP"
  }

}

resource "aws_security_group" "allow_egress" {
  name        = "allow_egress"
  description = "Allows internet egress for the VM to request WAN network"

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Saída Egress"
  }
}
