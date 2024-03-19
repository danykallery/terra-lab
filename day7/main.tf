resource "aws_instance" "VM1" {
  ami = var.ami
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"
  

  tags = {
    Name = "Mod-VM1"
  }

}


#Creating VPC with "Demo" as reference name
resource "aws_vpc" "demo" {
  # cidr_block = var.cidr
  instance_tenancy = var.tenancy
  tags = {
    Name = var.tags
  }
}


#Create a Subnet for the Demo-VPC
# resource "aws_subnet" "subnet1" {
#   availability_zone = "us-east-1a"
#   cidr_block        = "10.0.1.0/24"
#   vpc_id            = aws_vpc.demo.id
#   tags = {
#     Name = "subnet-priv1"
#   }
# }
