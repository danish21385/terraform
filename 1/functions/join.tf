#join(separator, list)
#expects a list of string


variable "title" {
    type = list(string)
    default = ["blackops"]
}

variable "subtitle" {
   type = list(string)
   default = ["dawn"]
}


locals {
  game = join("-", var.title, var.subtitle)

}

output "join_result" {
    value = local.game
}