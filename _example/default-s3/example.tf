provider "aws" {
  region = "eu-west-1"
}

module "s3_bucket" {
  source = "git::https://github.com/clouddrove/terraform-aws-s3.git"

  name        = "secure-bucket"
  application = "clouddrove"
  environment = "test"
  label_order = ["environment", "name", "application"]

  region         = "eu-west-1"
  versioning     = true
  acl            = "private"
  bucket_enabled = true
}