variable "ami_value" {
    default = "ami-0a11b74e4c74e3790"
}

variable "instance_size" {
  default = "t2.medium"
}

variable "key_name" {
    default = "my_key"
}
variable "instace_count" {
  default = 2
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
    default = "allow_tls"
}