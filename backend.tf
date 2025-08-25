terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-unique-bucket"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
  }
}
