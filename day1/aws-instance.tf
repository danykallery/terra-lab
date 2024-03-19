terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.38.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

resource "aws_default_vpc" "test" {
  tags = {
    cidr_block = "10.0.0.0/24"
    Name = "Test VPC"
  }
}

resource "aws_subnet" "test-vpc-pub1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.0.0/28"
  availability_zone = "us-east-1a"

  tags = {
    Name = "test-vpc-pub1"
  }
}


resource "aws_subnet" "test-vpc-priv1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "test-vpc-priv1"
  }
}

resource "aws_instance" "e_ip_1" {
  ami               = "ami-0f403e3180720dd7e"
  instance_type     = "t2.micro"
  subnet_id = "test-vpc-pub1"
  associate_public_ip_address = true
    tags = {
    Name = "Test-Server1"
  }
}

resource "aws_instance" "e_ip_2" {
  ami               = "ami-0f403e3180720dd7e"
  instance_type     = "t2.micro"
  subnet_id = aws_subnet.subnet2.id
  associate_public_ip_address = false
    tags = {
    Name = "Test-Server2"
  }
}

resource "aws_network_interface" "network_interface1" {
  subnet_id       = aws_subnet.subnet1.id
  
tags = {
    Name = "NetworkInterface1"
  }
}

  
