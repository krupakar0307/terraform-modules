provider "aws" {
    region = var.my_region
}

resource "aws_key_pair" "deployer" {
  key_name   = var.key_name
    public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_security_group" "allow_tls" {
  name        = var.security_group_name
  description = "Allow TLS inbound traffic"
  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  ingress {
    description      = "TLS from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}
resource "aws_instance" "nginx" {
    ami = var.ami_value
    instance_type = var.instance_size
    key_name = var.key_name
    tags = var.tags
    count = var.instace_count
    security_groups = [ aws_security_group.allow_tls.name ]
    connection {
      type = "ssh"
      user = "ubuntu"
      host = self.public_ip
      private_key = file("~/.ssh/id_rsa")
    }
    # provisioner "remote-exec" {
    #     inline = [
    #         "sudo apt update",
    #         "sudo apt install nginx -y"
    #     ]
    # }
}
