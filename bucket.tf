resource "aws_s3_bucket" "first_bucket" {
  bucket = "remote-state-pablo-shinzato"
  versioning {
    enabled = true
  }
}
