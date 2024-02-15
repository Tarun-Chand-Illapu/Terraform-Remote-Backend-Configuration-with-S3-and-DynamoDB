terraform {
  backend "s3" {
    bucket = "tarun-chand-terraform-statefile-backend"
    key = "terraform/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
    dynamodb_table = "Terraform-Backend-lock"
    
  }
}
