# Elastic IP for NAT
resource "aws_eip" "nat" {
  tags = {
    Name = "devops-nat-eip"
  }
}

# NAT Gateway in public subnet
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public[0].id

  tags = {
    Name = "devops-nat"
  }
}
