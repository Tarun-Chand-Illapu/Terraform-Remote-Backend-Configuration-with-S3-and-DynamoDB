provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  instance_type = "t2.micro"
  ami = "ami-0c7217cdde317cfec"
}

resource "aws_s3_bucket" "aws_s3_bucket" {
  bucket = "tarun-chand-terraform-statefile-backend" 

}

resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "Terraform-Backend-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
