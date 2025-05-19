module "vpc" {
  source              = "./modules/vpc"
  cidr_block          = "10.0.0.0/16"
  public_subnet_cidr  = "10.0.1.0/24"
  availability_zone   = "us-east-1b"
}


module "alb" {
  source     = "./modules/alb"
  subnet_ids = [module.vpc.public_subnet_id]
  vpc_id     = module.vpc.vpc_id
}


module "ec2" {
  source         = "./modules/ec2"
  ami            = "ami-0953476d60561c955" 
  instance_type  = "t2.micro"
  subnet_id = "subnet-0e8f087f2c6c06845" 
  key_name       = "Test-Key"
}



output "alb_dns_name" {
  value = "ec2-3-83-214-127.compute-1.amazonaws.com"
}
