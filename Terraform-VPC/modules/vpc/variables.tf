variable "vpc_cidr" {
  description = "VPC CIDR Range"
  type = string
}

variable "Subnet_cidr" {
  description = "Subnet CIDR"
  type = list(string)
}

variable "subnet_names" {
  description = "Subnet names"
  type = list(string)
  default = [ "PublicSubnet1", "PublicSubnet2" ]
}