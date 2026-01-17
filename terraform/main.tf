provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "app" {
  ami           = "ami-123456789"
  instance_type = "t3.micro"
}
