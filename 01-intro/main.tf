provider "local" {}

resource "local_file" "foo" {
  content  = "Hello World"
  filename = "/tmp/foo.bar"
}

#Normal Variable
variable "x" {
  default=10
}

#Print Variable Output
output "x" {
  value = var.x
}

# if our value is just variable then var.x , if it is combination of strings then "${var.x}"
output "x1" {
  value = "Value of -x ${var.x}"
}