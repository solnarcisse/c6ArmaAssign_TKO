#Environment variables
variable "env" {
  description = "Environment"
  type        = list(string)
}

variable "regions" {
  description = "Region List"
  type = list(object({
    alias   = string
    rg_name = string
    name    = string
  }))
}

#VPC vars
variable "vpc_params" {
  description = "VPC parameters"
  type = list(object({
    vpc_cidr = string
    vpc_name = string
  }))
}

#subnet vars
variable "public_subnet_params" {
  description = "public subnet parameters"
  type = list(object({
    subnet_cidr = string
    subnet_name = string
  }))
}

variable "private_subnet_params" {
  description = "private subnet parameters"
  type = list(object({
    subnet_cidr = string
    subnet_name = string
  }))
}

variable "default_subnet_params" {
  description = "public subnet parameters"
  type = list(object({
    subnet_cidr = string
    subnet_name = string
  }))
}

variable "availability_zones" {
  description = "availability zone"
  type        = list(string)
}

