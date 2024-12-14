module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.16.0"

  name = "test-vpc"
  cidr = "10.0.0.0/16"

  tags = {
    env = var.region
  }
}