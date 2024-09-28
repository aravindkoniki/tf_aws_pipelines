output "role_arn" {
  value       = aws_iam_role.admin_role.arn
  description = "IAM Role ARN created for admin"
}
