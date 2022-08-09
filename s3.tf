provider "aws" {
  region = "us-west-2"
  profile = "acme3"
}

locals {
  resource_prefix = {
    value = "hila-drifts"
  }
}

resource "aws_s3_bucket" "hilaData" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket        = "${local.resource_prefix.value}-data-hila1-acme"
  acl           = "public-read-write"
  force_destroy = true
  tags = merge({
    Name        = "${local.resource_prefix.value}-data-hila1-acme"
    Environment = local.resource_prefix.value
  }, {
    git_commit           = "d68d2897add1239bc2203a5ed0632a5cdd8ff8cefb0"
    git_file             = "terraform/aws/s3.tf"
    git_last_modified_at = "2020-06-16 14:46:24"
    git_last_modified_by = "nimrodkor@gmail.com"
    git_modifiers        = "nimrodkor"
    git_org              = "bridgecrewio"
    git_repo             = "terragoat"
    yor_trace            = "48666bb2-3c3c-45ff-b0df-63bcf2afd22b"
  })
}


resource "aws_s3_bucket" "hilaApple" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket        = "${local.resource_prefix.value}-applee-hila1-acme"
  acl           = "public-read-write"
  force_destroy = true
  tags = merge({
    Name        = "${local.resource_prefix.value}-apple-hila1-acme"
    Environment = local.resource_prefix.value
  }, {
    git_commit           = "d68d2897ad123d9bc2203a5ed0632a5cdd8ff8cefb0"
    git_file             = "terraform/aws/s3.tf"
    git_last_modified_at = "2020-06-16 14:46:24"
    git_modifiers        = "nimrodkoasdasr"
    git_org              = "bridgecrewio"
    git_repo             = "terranngoat"
    yor_trace            = "5956fe5a-6e23-4836-a4ff-f5d2b697c44d"
  })
}
