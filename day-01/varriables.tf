variable "instance_type" {
  description = "This used to define instance type we want to use"
  type = string
  default = "t2.micro"
}

variable "ingress_port" {
  description = "This contains list of ports allowed"
  type = list(string)
  default = [ "22", "80" ]
}