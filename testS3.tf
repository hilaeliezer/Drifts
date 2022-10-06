provider "aws" {
  profile = "acme1"
  region  = "us-east-1"
}

 # bla bla bla
resource "aws_s3_bucket" "test_hila1_drifts_2" {
  # bucket is not encrypted
  bucket = "sample-bucket-hila1-drifts-prisma"
  acl    = "private"
  versioning {
    enabled = true
  }
  force_destroy = true
  tags = {
    git_commit           = "77e689e3acd6a0e1e79a5f78ddce241085dac820"
    git_file             = "aws/s3.tf"
    git_last_modified_at = "2022-01-05 09:41:31"
    git_last_modified_by = "hila@gmail.com"
    git_modifiers        = "hilahilahila"
    git_org              = "hila"
    git_repo             = "terraform_samples"
    yor_trace            = "7ae65f53-8634-4017-a58d-c032c42cd4cf"
  }
}


resource "aws_s3_bucket_server_side_encryption_configuration" "test_hila1_drifts_2" {
  bucket = aws_s3_bucket.test_hila1_drifts_2.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "aws:kms"
    }
  }
}
