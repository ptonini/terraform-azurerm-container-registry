variable "name" {}

variable "rg" {
  type = object({
    name     = string
    location = string
  })
}

variable "sku" {
  default = "Premium"
}

variable "admin_enabled" {
  default = true
}

variable "tags" {
  default = {}
}