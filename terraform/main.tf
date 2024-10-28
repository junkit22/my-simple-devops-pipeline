resource "aws_s3_bucket" "junjie_bucket" {
  bucket = "s3-bucket-junjie"

    tags = {
    Name = "s3-junjie-bucket"
    Environment = "dev"
  }

}