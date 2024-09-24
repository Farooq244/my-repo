output vpc_id {
  value       = aws_vpc.tf-vpc.id
}

output public_subnets_id {
  value       = aws_subnet.pub-subnet.id
}
