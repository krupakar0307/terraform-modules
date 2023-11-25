provider "aws" {
    region = lookup(var.region,terraform.workspace,var.region.dev)
}
module "ec2" {
    source = "../ec2_module"
    my_region = lookup(var.region, terraform.workspace, var.region.dev)
    instace_count = lookup(var.instace_count, terraform.workspace, "1")
    instance_size = lookup(var.instance_size, terraform.workspace, "t2.micro")
    ami_value = lookup(var.ami_value, terraform.workspace, var.ami_value.dev)
    key_name = var.key_name
    tags = var.tags
    security_group_name = var.security_group_name
}
