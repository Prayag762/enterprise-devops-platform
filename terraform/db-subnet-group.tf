resource "aws_db_subnet_group" "main" {

  name = "enterprise-devops-db-subnet-group"

  subnet_ids = [
    aws_subnet.private_1.id,
    aws_subnet.private_2.id
  ]

  tags = {
    Name = "enterprise-devops-db-subnet-group"
  }
}
