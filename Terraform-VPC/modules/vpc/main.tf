#VPC
resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr
  instance_tenancy = "default"
  tags = {
    "Name" = "my_vpc"
  }
}

#Subnet
resource "aws_subnet" "subnets" {
  count = length(var.subnet_cidr)
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.subnet_cidr[count.index]
  availability_zone = data.aws_availability_zone.available.names[count.index]
  
  map_public_ip_on_launch = true

  tags = {
    Name = var.subnet_names[count.index]
  }
}