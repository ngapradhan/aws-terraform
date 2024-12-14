module "ec2" {
  source       = "../day-01"
  region       = "us-east-1"
  ingress_port = ["22"]
}