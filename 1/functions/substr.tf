# use locals to calculate a value from variables. locals are local to the current module only
#The substr function in Terraform is used to extract a substring from a given string.
#It allows you to specify the starting position within the string and the length of
#the substring you want to extract

variable "input_string" {
  type    = string
  default = "This is a sample string for testing substr function."
}

locals {
  extracted_string = substr(var.input_string, 0, 80) # Extract 6 characters starting from position 8.
}

output "extracted_string" {
  value = local.extracted_string
}
