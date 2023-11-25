variable "lambda_role_name" {
    default = "my_lambda_test_role"
}
variable "region" {
    default = "ap-south-1"
}
variable "env_var" {
    default = "Krupakar"
}
variable "runtime" {
    default = "python3.11"
}
variable "function_name" {
    default = "lambda_function_test"
}
variable "filename" {
    default = "lambda.py"
}
variable "handler" {
    default = "lambda.handler"
}