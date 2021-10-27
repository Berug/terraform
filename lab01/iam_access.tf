# resource "aws_iam_group" "training_group_1" {
#   name = "administrators"
# }
# resource "aws_iam_policy_attachment" "admins_attach" {
#   name       = "admins_attach"
#   groups     = [aws_iam_group.training_group_1.name]
#   policy_arn = "arn:aws:iam::aws:policy/job-function/SystemAdministrator"

# }
# resource "aws_iam_user" "training_admin1" {
#   name = "admin1"
#   tags = {
#     Name    = "training-user-1"
#     Project = "Training"
#   }

# }
# resource "aws_iam_user" "training_admin2" {
#   name = "admin2"
#   tags = {
#     Name    = "training-user-2"
#     Project = "Training"
#   }

# }
# resource "aws_iam_group_membership" "training-AdminUsers" {
#   name = "admin_users"
#   users = [aws_iam_user.training_admin1.name,
#   aws_iam_user.training_admin2.name]
#   group = aws_iam_group.training_group_1.name
# }
# resource "aws_iam_access_key" "training_adminkeyacces1" {
#   user = aws_iam_user.training_admin1.name

# }
# resource "aws_iam_access_key" "training_adminkeyacces2" {
#   user = aws_iam_user.training_admin2.name

# }
# output "training_admin1_access_key" {
#   value = aws_iam_access_key.training_adminkeyacces1.id
# }
# output "training_admin1_secret_key" {
#   value     = aws_iam_access_key.training_adminkeyacces1.secret
#   sensitive = true
# }
# output "training_admin2_access_key" {
#   value = aws_iam_access_key.training_adminkeyacces2.id
# }
# output "training_admin2_secret_key" {
#   value     = aws_iam_access_key.training_adminkeyacces2.secret
#   sensitive = true
# }
