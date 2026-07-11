resource "aws_db_instance" "mysql" {

  identifier = "enterprise-devops-db"

  engine         = "mysql"
  engine_version = "8.0"

  instance_class = "db.t3.micro"

  allocated_storage = 20
  storage_type      = "gp3"

  db_name  = "taskmanager"
  username = "admin"
  password = "Password123"

  db_subnet_group_name = aws_db_subnet_group.main.name

  vpc_security_group_ids = [
    aws_security_group.rds_sg.id
  ]

  publicly_accessible = false

  multi_az = false

  skip_final_snapshot = true

  deletion_protection = false

  tags = {
    Name = "enterprise-devops-rds"
  }
}
