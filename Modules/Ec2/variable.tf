variable "ami_id" {
    type = string  
}

variable "ec2_type" {
    type = string
    default = "t2.micro"
  
}

variable "subnet_id" {
    type = string
  
}

variable "ec2_count" {
    type = number 
}

variable "env_name" {
    type = string 
    description = "Prod or QA or Dev"
}