module "vpc" {
  source      = "../modules/vpc"
  vpc_cidr    = "10.0.0.0/16"
  subnet_cidr = "10.0.0.0/24"
  allow_all   = "0.0.0.0/0"
  rt_cidr     = "0.0.0.0/0"
  az          = "ap-south-1a"
  region      = "ap-south-1"

}

module "sg" {
  source        = "../modules/sg"
  vpc_id        = module.vpc.vpc_id
  inbound_ports = [22, 8080]
}

module "ec2" {
  source           = "../modules/ec2"
  server_name      = "tf-server"
  ami              = "ami-03f4878755434977f"
  instance_type    = "t2.micro"
  key_name         = "mumbai"
  subnet_id        = module.vpc.public_subnets_id
  securitygroup_id = module.sg.sg_id
  server_ip        =  module.ec2.server_ip
 
}