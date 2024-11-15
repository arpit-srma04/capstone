provider "aws" {
  region = "us-east-1"  # Change to the region that is required by your setup
}

resource "aws_instance" "ec_2" {
  ami           = "ami-063d43db0594b521b"
  instance_type = "t2.micro"

  tags = {
    Name = "team_1_capstone"
  }
}

resource "aws_s3_bucket" "t1bucket" {
  bucket = "vedanth-arpit"
  acl    = "private"
}
