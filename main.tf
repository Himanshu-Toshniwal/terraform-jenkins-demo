module "ec2_module" {
  source = "./modules/ec2"
  instance_type = "t2.micro"
  ami           = "ami-0144277607031eca2"
  Name          = "my-terraform-instance"

}

module "default_ec2" {
  source = "./modules/ec2"
  instance_type = "t2.micro"
  ami           = "ami-0144277607031eca2"
  Name          = "default-terraform-instance"

}