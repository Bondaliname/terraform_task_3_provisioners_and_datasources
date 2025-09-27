variable "prefix" {
  default = "tfvmex"
}

variable "vm_name" {
  type = string
}

variable "ssh_user" {
  type    = string
  default = "example-admin"
}

variable "ssh_private_key_path" {
  type    = string
  default = "~/.ssh/id_rsa"
}

variable "ssh_password" {
  type    = string
  default = "Password1234!"
}

variable "vnet_name" {
  type = string
}

variable "subnet_name" {
  type = string
}

variable "nic_name" {
  type = string
}