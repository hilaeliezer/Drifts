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
  force_destroy = true
  tags = merge({
    Name        = "${local.resource_prefix.value}-data-hila1-acme"
    Environment = local.resource_prefix.value
  }, {
    git_commit           = "d68d2891117add1239bc2203a5ed0632a5cdd8ff8cefb0"
    git_file             = "terraform/aws/s3.tf"
    git_last_modified_at = "2020-06-16 14:46:24"
    git_last_modified_by = "nimrodkor@gmail.com"
    git_modifiers        = "nimrodkor"
    git_org              = "bridgecrewio"
    git_repo             = "terragoat"
    yor_trace            = "f3bc5b77-deab-41b0-8288-e761c98692a1"
  })
  grant {
    type = "CanonicalUser"
    permissions = ["FULL_CONTROL"]
    id = "89f4686bb4e9705823aef87dd8d7ef1dc1eebf4081cc8b7cb4270f74d03da811"
  }
  grant {
    uri = "http://acs.amazonaws.com/groups/global/AllUsers"
    type = "Group"
    permissions = ["READ", "WRITE"]
  }
}



resource "aws_s3_bucket" "hilaApple" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket        = "${local.resource_prefix.value}-applee-hila1-acme"
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
  grant {
    uri = "http://acs.amazonaws.com/groups/global/AllUsers"
    type = "Group"
    permissions = ["READ", "WRITE"]
  }
  grant {
    type = "CanonicalUser"
    permissions = ["FULL_CONTROL"]
    id = "89f4686bb4e9705823aef87dd8d7ef1dc1eebf4081cc8b7cb4270f74d03da811"
  }
}

