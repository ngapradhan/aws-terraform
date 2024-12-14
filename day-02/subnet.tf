resource "aws_subnet" "public" {
  count = length(var.public_subnets)

  vpc_id                  = module.vpc.vpc_id # Referencing the VPC ID from the module
  cidr_block              = element(var.public_subnets, count.index)
  availability_zone       = element(var.availability_zones, count.index)
  map_public_ip_on_launch = true
  tags = {
    Name = "Public Subnet ${count.index + 1}"
  }
}

resource "aws_subnet" "private" {
  count = length(var.private_subnets)

  vpc_id            = module.vpc.vpc_id # Referencing the VPC ID from the module
  cidr_block        = element(var.private_subnets, count.index)
  availability_zone = element(var.availability_zones, count.index)
  tags = {
    Name = "Private Subnet ${count.index + 1}"
  }
}