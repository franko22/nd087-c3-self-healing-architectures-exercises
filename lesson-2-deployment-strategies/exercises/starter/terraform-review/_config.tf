terraform {
  backend "s3" {
    bucket = "udacity-tf-frank-student" # Update here with your S3 bucket
    key    = "terraform/lesson2-ex-4.tfstate"
    region = "us-east-2"
  }
}

provider "aws" {
  region = "us-east-2"

  default_tags {
    tags = local.tags
  }
}