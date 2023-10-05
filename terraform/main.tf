provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "default" {
  bucket = "myapp-milesd-chocksaway123"
}

resource "aws_s3_object" "default" {
  source = "../target/HelloWorld-0.0.1-SNAPSHOT.jar"
  bucket = aws_s3_bucket.default.id
  key = "beanstalk-myapp"
}