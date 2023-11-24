resource "aws_vpc" "my_vpc" {
    cidr_block = var.cidr_block_range
}
resource "aws_subnet" "my_public_subnet" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = var.cidr_block_subnet_id
    availability_zone = var.availability_zone.zone
    map_public_ip_on_launch = true
}
resource "aws_internet_gateway" "my_ig" {
    vpc_id = aws_vpc.my_vpc.id
}
resource "aws_route_table" "my_rt" {
    vpc_id = aws_vpc.my_vpc.id
    route {
        gateway_id = aws_internet_gateway.my_ig.id
        cidr_block = "0.0.0.0/0"
    }
  
}
resource "aws_route_table_association" "my_rt_assoc" {
    subnet_id = aws_subnet.my_public_subnet.id
    route_table_id = aws_route_table.my_rt.id
}
