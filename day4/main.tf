# provider "aws" {
#   }

# resource "aws_instance" "Linux" {
#   ami           = "ami-07d9b9ddc6cd8dd30"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "web-server1"
#   }
# }


# resource "aws_default_vpc" "test" {
#   tags = {
#     cidr_block = "10.0.0.0/24"
#     Name = "Test VPC"
#   }
# }

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
    Name = var.ec2_name
  }
}







