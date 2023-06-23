terraform {
  backend "s3" {
    bucket = "saritabucket"
    key    = "sample/terraform.tfvars"
    region = "us-east-1"
  }
}