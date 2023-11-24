variable "words" {
  type    = list(string)
  default = ["Terraform", "is", "powerful"]
}

output "joined_string" {
  value = join("   ", var.words)
}
