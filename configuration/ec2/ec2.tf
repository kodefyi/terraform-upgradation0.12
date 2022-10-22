module "my_ec2" {
  source        = "../../modules/ec2"
  ec2_count     = 1
  ami_id        = "ami-08c40ec9ead489470"
  instance_type = "t2.micro"
  subnet_id     = data.aws_subnet.main.id
}

data "aws_subnet" "main" {
  tags = {
    Name = "main"
  }
}

