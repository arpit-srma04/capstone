provider "aws" {
  region = "us-east-1"  # Change to the region that is required by your setup
}

resource "aws_instance" "ec_2" {
  ami           = "ami-063d43db0594b521b"
  instance_type = "t2.micro"
  
  monitoring    = true  # Correct way to enable detailed monitoring

  tags = {
    Name = "team_1_capstone"
  }
}

# Make the S3 bucket name unique by using random_id
resource "random_id" "bucket_suffix" {
  byte_length = 8
}

resource "aws_s3_bucket" "t1bucket" {
  bucket = "vedanth-arpit-${random_id.bucket_suffix.hex}"  # Make bucket name unique
  acl    = "private"
}

