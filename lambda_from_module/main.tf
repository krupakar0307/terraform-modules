provider "aws" {
    region = var.my_region
}


module "lambda" {
    source = "../modules/lambda-module"
    region = var.my_region
    lambda_role_name = var.my_lambda_role_name
    function_name = var.lambda_function_name
    filename = var.code_filename
    handler = var.lambda_handler
    env_var = var.my_environment_vars
    runtime = var.lambda_runtime
}