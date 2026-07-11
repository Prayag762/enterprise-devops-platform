resource "aws_iam_role" "ec2_role" {

  name = "enterprise-devops-ec2-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"

    Statement = [{
      Effect = "Allow"

      Principal = {
        Service = "ec2.amazonaws.com"
      }

      Action = "sts:AssumeRole"
    }]
  })
}
resource "aws_iam_policy" "s3_policy" {

  name = "enterprise-devops-s3-policy"

  policy = jsonencode({

    Version = "2012-10-17"

    Statement = [

      {

        Effect = "Allow"

        Action = [
          "s3:GetObject",
          "s3:PutObject",
          "s3:DeleteObject"
        ]

        Resource = [
          "${aws_s3_bucket.app_bucket.arn}/*"
        ]
      },

      {

        Effect = "Allow"

        Action = [
          "s3:ListBucket"
        ]

        Resource = aws_s3_bucket.app_bucket.arn
      }

    ]
  })
}
resource "aws_iam_role_policy_attachment" "attach" {

  role       = aws_iam_role.ec2_role.name
  policy_arn = aws_iam_policy.s3_policy.arn
}
resource "aws_iam_instance_profile" "profile" {

  name = "enterprise-devops-profile"

  role = aws_iam_role.ec2_role.name
}
