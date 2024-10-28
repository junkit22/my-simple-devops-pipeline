terraform {
  backend "s3" {
    bucket = "sctp-ce7-tfstate" 
    key    = "terraform-github-action-junjie.tfstate"
    region = "us-east-1"
  }
}

resource "aws_s3_bucket" "junjie_bucket" {
  bucket = "s3-bucket-junjie"
}
