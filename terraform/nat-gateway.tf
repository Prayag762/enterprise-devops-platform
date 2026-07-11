# Elastic IP for NAT Gateway

resource "aws_eip" "nat" {
  domain = "vpc"

  tags = {
    Name = "enterprise-devops-eip"
  }

  depends_on = [aws_internet_gateway.igw]
}

# NAT Gateway

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public_1.id

  tags = {
    Name = "enterprise-devops-nat"
  }

  depends_on = [aws_internet_gateway.igw]
}
