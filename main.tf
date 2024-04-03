#create s3 bucket
resource "aws_s3_bucket" "example" {
  bucket = "example-bucket"
}

#s3 bucket versining
resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.example.id
  versioning_configuration {
    status = "Enabled"
  }
}
