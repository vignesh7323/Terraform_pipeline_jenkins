module "vpc" {
    source = "../../Modules/vpc/"
    vpc_cidr = "10.0.0.0/16"
    subnet = "10.0.1.0/24"
    env = dev
}

module "ec2" {
    source = "../../Modules/Ec2"
    ami_id = "ami-00ca570c1b6d79f36"
    ec2_type = "t2.micro"
    subnet_id = module.vpc.subnet_id
    ec2_count = 1
    env_name = "dev"  
}


