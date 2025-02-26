
resource "null_resource" "test" {
  for_each = var.x

  provisioner "local-exec" {
    command = "echo Value of ${each.key} = ${each.value}"
  }

}

variable "x" {
  default = {
    i = 100,
    j = 200
  }
}