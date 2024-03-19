provider "aws" {
  }

  # EC2 without any spec

  resource "aws_instance" "web1" {
  ami           = "ami-07d9b9ddc6cd8dd30"
  instance_type = "t2.micro"

  tags = {
    Name = "server1"
  }
}


# provision a VPC

resource "aws_default_vpc" "test-vpc" {
  tags = {
    Name = "test-VPC"
    
    cidr_block = "10.0.0.0/16"
    availability_zone = "us-east-1a"

  tags = {
    Name = "test-vpc"
  }
}
}
# Provision Subnet

resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Private1"
  }
}

#Provisioning EC2

resource "aws_instance" "ec2-within-vpc" {
  ami           = "ami-0f403e3180720dd7e"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.subnet1.id

  # Associate Elastic IP
  associate_public_ip_address = false

  tags = {
    Name = "ec2-within-vpc"
  }
}
