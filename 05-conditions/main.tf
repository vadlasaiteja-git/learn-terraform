terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.5.2"
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

