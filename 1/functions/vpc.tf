resource "aws_vpc" "vpc1" {
  count = var.environment == "prod" ? 2:1
  cidr_block = "10.10.0.0/24"

  tags = {
    Name = "Terraform"
  }
}


# resource "aws_vpc" "vpc2" {
#   cidr_block = "10.10.0.0/24"

#   tags = {
#     Name = "Terraform"
#   }
# }