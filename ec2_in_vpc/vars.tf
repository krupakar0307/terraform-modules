variable "cidr_block_range" {
    default = "10.0.0.0/16"
}
variable "cidr_block_subnet_id" {
    default = "10.0.0.0/24"
}
variable "availability_zone" {
        type = map(string)
        default = {
            zone = "ap-south-1a"
        }
}

# EC2 instance vars

variable "ami_value" {
    default = "ami-0a11b74e4c74e3790"
}
variable "instance_size" {
    default = "t2.micro"
}
variable "key_name" {
    default = "krupakar"
}