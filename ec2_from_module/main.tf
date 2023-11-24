provider "aws" {
    region = "us-east-1"
}
module "ec2" {
    source = "../ec2_module"
    instace_count = var.instace_count
    instance_size = var.instance_size
    ami_value = var.ami_value
    key_name = var.key_name
    tags = var.tags
    security_group_name = var.security_group_name
}