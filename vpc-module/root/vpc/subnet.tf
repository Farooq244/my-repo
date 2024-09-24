resource "aws_subnet" "pub-subnet" {
  vpc_id            = aws_vpc.tf-vpc.id
  cidr_block        = var.subnet_cidr
  availability_zone = var.az

  tags = {
    Name = "Public-Subnet"
  }
}