resource "aws_route_table_association" "tf-rta" {
  subnet_id      = aws_subnet.pub-subnet.id
  route_table_id = aws_route_table.public-rt.id
}