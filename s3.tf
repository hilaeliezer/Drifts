provider "aws" {
  profile = "acme1"
  region  = "us-east-1"
}

 # bla bla bla
resource "aws_s3_bucket" "test_hila1_drifts_2" {
  # bucket is not encrypted
  bucket = "sample-bucket-hila1-drifts-prisma"
  acl    = "public-read"
  versioning {
    enabled = true
  }
  force_destroy = true
  tags = {
    git_commit           = "77e689e3acd6a0e1e79a5f78ddce241085dac820"
    git_file             = "aws/s3.tf"
    git_last_modified_at = "2022-01-05 09:41:31"
    git_last_modified_by = "hila@gmail.com"
    git_modifiers        = "hila"
    git_org              = "hila"
    git_repo             = "terraform_samples"
    yor_trace            = "7ae65f53-8634-4017-a58d-c032c42cd4cf"
    hila_tag  ="test_tag"
  }
}

