variable "my_region" {
    default = "us-east-1"
}
variable "my_lambda_role_name" {
    default = "my_lambda_test_role"
}

variable "my_environment_vars" {
    default = "Krupakar"
}
variable "lambda_runtime" {
    default = "python3.11"
}
variable "lambda_function_name" {
    default = "lambda_function_krupakar"
}
variable "code_filename" {
    default = "lambda.py"
}
variable "lambda_handler" {
    default = "lambda.handler"
}