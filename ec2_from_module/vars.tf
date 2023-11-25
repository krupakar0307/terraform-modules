variable "ami_value" {
    type = map(string)

    default = {
        dev = "ami-0a11b74e4c74e3790"
        prod = "ami-0fc5d935ebf8bc3bc"
    }
}
variable "state_path" {
    type = map(string)
    default = {
      "dev" = "dev"
      "prod" = "prod"
    }
}

variable "instance_size" {
    type = map(string)
    default = {
        "dev" = "t2.micro"
        "qa" = "t3.medium"
        "prod" = "t2.large"
    }
}
variable "region" {
    type = map(string)

    default = {
        dev = "ap-south-1"
        prod = "us-east-1"
    }
}
variable "key_name" {
    default = "my_key-prod"
}
variable "instace_count" {
    type = map(string)
    default = {
        "dev" = "1"
        "qa" = "1"
        "prod" = "1"
    }
}
variable "tags" {
    type = map(string)
    default = {
        Name = "my_nginx_server"
        state = "module_Running"
        description = "nginx server runs in it"
    } 
}

variable "security_group_name" {
    default = "allow_tls-dev"
}
