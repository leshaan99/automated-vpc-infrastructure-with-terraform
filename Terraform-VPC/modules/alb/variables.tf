variable "sg_id" {
  description = "Security Group ID for Application Load Balancer"
  type = string
}

variable "subnets" {
  description = "Subnets for Application Load Balancer"
  type = list(string)
}

variable "vpc_id" {
  description = "VPC for Application Load Balancer"
  type = string
}

variable "instances" {
  description = "Instances ID For Target Group Attachment"
  type = list(string)
}