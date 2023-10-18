output "vpc1id" {
  value = aws_vpc.vpc1.*.id
}


# output "vpc2id" {
#   value = aws_vpc.vpc1[1]
# }