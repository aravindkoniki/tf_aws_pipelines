# Create IAM Role
resource "aws_iam_role" "admin_role" {
  name               = "AdministratorRole"
  assume_role_policy = data.aws_iam_policy_document.ec2_trust.json
}

# Attach AdministratorAccess Policy
# administrator
resource "aws_iam_role_policy_attachment" "admin_policy_attachment" {
  role       = aws_iam_role.admin_role.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
