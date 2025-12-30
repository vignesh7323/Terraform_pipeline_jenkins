resource "aws_instance" "ec2_1" {
    ami = var.ami_id
    instance_type = var.ec2_type 
    subnet_id = var.subnet_id
    count = var.ec2_count

    tags = {
      Name = "${var.env_name}-ec2-{count.index}"
      Env  = var.env_name
    } 
}


