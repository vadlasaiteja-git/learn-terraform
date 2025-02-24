provider "local" {}

resource "local_file" "foo" {
  content  = "Hello World"
  filename = "/tmp/foo.bar"
}

#Normal Variable
variable "x" {
  default=10
}

#List Variable
variable "y"{
  default =[1,"sai",0.007,false]
}
#List can have a combination of types also

#Map Variable
variable "z" {
  default = {
    name ="Sai"
    age = 23
  }
}

#Print Variable Output
output "x" {
  value = var.x
}

# If our value is just variable then var.x , if it is combination of strings then "${var.x}"
output "x1" {
  value = "Value of -x ${var.x}"
}

#Accessing list variable
output "y1" {
  value = var.y[0]
}
output "y2" {
  value = var.y[1]
}
output "y3" {
  value = var.y[2]
}
output "y4" {
  value = var.y[3]
}

#Accessing Map Variable
output "z" {
  value = "Name - ${var.z["name"]}, Age - ${var.z["age"]}"
}

#### Variables from another files

# tfvars - manually loaded, Meaning these files are loaded to command line by using -var-file option
# terraform apply -auto-approve -var-file=data.tfvars

variable "input" {}
output "input" {
  value = var.input
}

#auto.tfvars -  These files are automatically loaded.

variable "class" {}
output "class" {
  value = var.class
}

variable "trainer" {}
output "trainer" {
  value = var.trainer
}
