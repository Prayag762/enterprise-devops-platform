############################################
# Application Load Balancer Security Group
############################################

resource "aws_security_group" "alb_sg" {
  name        = "alb-security-group"
  description = "Allow HTTP and HTTPS traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "HTTP"

    from_port = 80
    to_port   = 80
    protocol  = "tcp"

    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTPS"

    from_port = 443
    to_port   = 443
    protocol  = "tcp"

    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"

    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "enterprise-devops-alb-sg"
  }
}

####################################################
# EC2 Security Group
####################################################

resource "aws_security_group" "ec2_sg" {
  name        = "ec2-security-group"
  description = "Allow ALB traffic and SSH"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "Application Traffic from ALB"

    from_port = 5000
    to_port   = 5000
    protocol  = "tcp"

    security_groups = [
      aws_security_group.alb_sg.id
    ]
  }

  ingress {
    description = "SSH"

    from_port = 22
    to_port   = 22
    protocol  = "tcp"

    cidr_blocks = ["54.226.204.91/32"]
  }

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"

    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "enterprise-devops-ec2-sg"
  }
}

####################################################
# RDS Security Group
####################################################

resource "aws_security_group" "rds_sg" {
  name        = "rds-security-group"
  description = "Allow MySQL from EC2 only"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "MySQL"

    from_port = 3306
    to_port   = 3306
    protocol  = "tcp"

    security_groups = [
      aws_security_group.ec2_sg.id
    ]
  }

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"

    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "enterprise-devops-rds-sg"
  }
}
