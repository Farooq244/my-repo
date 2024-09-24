terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }
   backend "s3" {
    bucket         	   = "jenkins-backup-tarfiles"
    key              	  = "tfstate"
    region         	   = "ap-south-1"
  }
}

provider "aws" {
   region = "ap-south-1"
}