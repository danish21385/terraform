# variable "nested_list" {
#   type = list(list(string))
#   default = [
#     ["a", "b", "c"],
#     ["d", "e"],
#     ["f", "g", "h"],
#   ]
# }

# output "flattened_list" {
#   value = flatten(var.nested_list)
# }


variable "resource_tags" {
  type = list(list(object({
    key   = string
    value = string
  })))
  default = [
    [
      { key = "environment", value = "dev" },
      { key = "application", value = "web" },
    ],
    [
      { key = "environment", value = "prod" },
      { key = "application", value = "db" },
    ],
  ]
}



output "flatter" {
  value = flatten(var.resource_tags)
}