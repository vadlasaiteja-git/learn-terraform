terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.5.2"
    }
    null = {
      source  = "hashicorp/null"
      version = "3.2.3"
    }
  }
}
resource "local_file" "test" {
  filename = "/tmp/a.txt"
  content = var.content==null?"Null Content":var.content
}

variable "content" {
  default = null
}

# condition is all about what value to give to a argument.
# Now we can use this as an advantage and decide whether we can run this resource or not using a count loop

resource "null_resource" "test" {
  count = var.content == null && var.content == "" ? 0 : 1
}

variable "x" {
  type = number
}

output "x" {
  value = var.x == 1 ? 100 : var.x == 2 ? 200 : 0
}