terraform {
  backend "s3" {
    bucket = "terbuc"
    key    = "terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "dyns3"
  }
}