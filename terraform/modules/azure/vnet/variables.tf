variable "vnet_name" {
  type = string
}

variable "address_space" {
  type    = list(string)
  default = ["10.0.0.0/16"]
}

variable "location" {
  type = string
}

variable "resource_group" {
  type = string
}
