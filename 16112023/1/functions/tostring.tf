variable "example_string" {
  type    = string
  default = "90"
}

output "converted_number" {
  value = tonumber(var.example_string)
}
