resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.tf-vpc.id
  route {
    cidr_block = var.rt_cidr
    gateway_id = aws_internet_gateway.IGW.id
  }
  tags = {
    Name = "public-rt"
  }
}