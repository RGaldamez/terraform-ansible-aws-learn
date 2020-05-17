# resource "aws_instance" "example-instance" {
#   ami = lookup(var.AMIS, var.REGION)
#   instance_type = "t2.micro"
#   tags = {
#       Name = "Terraform made instance"
#   }
# }
