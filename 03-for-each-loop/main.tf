
resource "null_resource" "test" {
  for_each = var.x

  provisioner "local-exec" {
    command = "echo Value of ${each.key} = ${each.value}"
  }

}

variable "x" {
  default = {
    j = 100,
    i = 200
  }
}