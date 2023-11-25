terraform {
  backend "s3" {
    region = "ap-south-1"
    bucket = "terra-bucket-000"
    key = "myapp"
  }
}