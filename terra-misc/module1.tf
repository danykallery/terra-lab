module "ec2_instance" {
  source  = "../day7"
   

  tags = {
       Name = "dev"
  }
}

module "vpc" {
  source = "../day7"
  cidr = "10.0.0.0/24"
  tags = {
    Name = "vpc1"
  }
}





# resource "aws_instance" "Linux" {
#   ami           = "ami-07d9b9ddc6cd8dd30"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "web-server1"
#   }
# }
