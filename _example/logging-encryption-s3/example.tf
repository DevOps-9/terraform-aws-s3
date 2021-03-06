provider "aws" {
  region = "eu-west-1"
}

module "s3_bucket" {
  source = "./../../"

  name        = "clouddrove-logging-encryption-bucket"
  environment = "test"
  label_order = ["name", "environment"]

  bucket_logging_encryption_enabled = true
  versioning                        = true
  acl                               = "private"
  sse_algorithm                     = "AES256"
  target_bucket                     = "bucket-logs12"
  target_prefix                     = "logs"
}
