* This is an ec2 provision in difference regions bases on using terraform workspaces.
* In this we configured backend as s3 to store state files.

We'll use terraform workspaces to isolate and utilize same modular code to provision multiple instance in different regions.
- Here you can observe vars file that has different supported region ami's and other stuff.
- Now we've to use terraform workspace to isolate and provison different instance and those state files are stored sperated folders in single bacekend bucket.
- Usage:
    `terraform init` --> `terraform workspace new dev`  -->    `terraform workspace list`
    `terraform plan` --> `terraform apply` --> This will provision instance in dev.
    SImilar usage for prod, create new workspace and follow same commands.