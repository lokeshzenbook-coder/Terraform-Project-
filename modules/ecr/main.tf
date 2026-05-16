resource "aws_ecr_repository" "repo" {
  name = "nodejs-app"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "nodejs-ecr"
  }
}
