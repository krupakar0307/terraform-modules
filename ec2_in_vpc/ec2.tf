resource "aws_instance" "myEc2" {
    ami = var.ami_value
    instance_type = var.instance_size
    subnet_id = aws_subnet.my_public_subnet.id
    key_name = var.key_name
    count = 2
    availability_zone = "ap-south-1a"
    vpc_security_group_ids = [aws_security_group.my_sg.id]
    connection {
      type = "ssh"
      user = "ubuntu"
      private_key = file("~/.ssh/id_rsa")
      host = self.public_ip
    }
    provisioner "remote-exec" {
        inline = [ "sudo apt update && sudo apt install nginx -y" ]
    }
}
resource "aws_key_pair" "myKeypair" {
    key_name = "krupakar"
    public_key = file("~/.ssh/id_rsa.pub")
}