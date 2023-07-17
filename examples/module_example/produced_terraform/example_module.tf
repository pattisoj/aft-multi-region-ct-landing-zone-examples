# example_module.jinja




module "example_module_us-east-2" {
  source = "./modules/example"
  providers = {
    aws = aws.us-east-2
  }
}

module "example_module_us-west-1" {
  source = "./modules/example"
  providers = {
    aws = aws.us-west-1
  }
}

module "example_module_us-west-2" {
  source = "./modules/example"
  providers = {
    aws = aws.us-west-2
  }
}

module "example_module_eu-west-1" {
  source = "./modules/example"
  providers = {
    aws = aws.eu-west-1
  }
}

module "example_module_ap-south-1" {
  source = "./modules/example"
  providers = {
    aws = aws.ap-south-1
  }
}
