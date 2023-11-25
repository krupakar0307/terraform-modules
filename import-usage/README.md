- Terraform import will import terraform configuration files from already created resources on cloud.
- Usage:
	create provider.tf and add import block for resource that needs to import config, import template can be found in docs.
	add import block and apply command `terraform plan -generate-config-out=<resource.tf>` and this will write config to file along with optional and required fields.
	Once imported config file, now it's time to generate state file that to sync code and already created resource.
	Apply `terraform import <resource_name> <resouce_id>` for eg: %terraform import aws_s3_bucket.bucket bucket-name
