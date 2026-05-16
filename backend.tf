terraform {
  backend "s3" {
    bucket         = "lokesh-terraform-backend2"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
