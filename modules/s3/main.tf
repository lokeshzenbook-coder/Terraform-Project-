resource "aws_s3_bucket" "bucket" {
  bucket = "lokesh-devops-project-bucket"

  tags = {
    Name = "project-bucket"
  }
}
