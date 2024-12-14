terraform {
  required_providers {
    aws = {

    }
  }
}

provider "aws" {
  region = var.region
}