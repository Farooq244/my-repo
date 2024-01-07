resource "aws_vpc" "tf-vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "tf-vpc"
  }
}