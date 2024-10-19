# Create IAM Role
resource "aws_iam_role" "admin_role" {
  name               = "AdministratorRole"
  assume_role_policy = data.aws_iam_policy_document.ec2_trust.json
}

# Attach AdministratorAccess Policy
resource "aws_iam_role_policy_attachment" "admin_policy_attachment" {
  role       = aws_iam_role.admin_role.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}


# Create IAM Role
resource "aws_iam_role" "my_dev_admin_role" {
  provider           = aws.MY_DEV_ENVIRONMENT
  name               = "MY_DEV_AdministratorRole"
  assume_role_policy = data.aws_iam_policy_document.ec2_trust.json
}

# Attach AdministratorAccess Policy
resource "aws_iam_role_policy_attachment" "my_dev_admin_policy_attachment" {
  provider   = aws.MY_DEV_ENVIRONMENT
  role       = aws_iam_role.my_dev_admin_role.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
