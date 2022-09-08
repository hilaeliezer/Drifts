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
    git_commit           = "d68d2891117add1239bc2203a5ed0632a5cdd8ff8cefb0"
    git_file             = "terraform/aws/s3.tf"
    git_last_modified_at = "20120-06-16 14:46:24"
    git_last_modified_by = "nimrodkor+1@gmail.com"
    git_modifiers        = "nimrodk111111or"
    git_org              = "bridgecrewio"
    git_repo             = "terragoat"
    yor_trace            = "f3bc5b77-deab-41b0-8288-e761c98692a1"
  })
}


resource "aws_s3_bucket" "hilaApple" {
  # bucket is public
  # bucket is not encrypt111111111111ed
  # bucket does not have access logs
  # bucket does not have ver11111111sioning
  bucket        = "${local.resource_prefix.value}-applee-hila1-acme"
  acl           = "private"
  force_destroy = true
  tags = merge({
    Name        = "${local.resource_prefix.value}-apple-hila1-acme"
    Environment = local.resource_prefix.value
  }, {
    git_commit           = "d68d28971111ad123d9bc2203a5ed0632a5cdd8ff8cefb0"
    git_file             = "terraform/aws/s3.tf"
    git_last_modified_at = "2020-06-16 14:46:24"
    git_modifiers        = "nimrodkoasdasr"
    git_org              = "bridgecrewio"
    git_repo             = "terranngoat"
    yor_trace            = "1d90c4e9-fc33-40e0-ae58-74949e306413" 
  })
}
