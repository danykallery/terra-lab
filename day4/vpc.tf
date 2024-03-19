# # Create a VPC
# resource "aws_vpc" "demo_vpc" {
#     cidr_block = "10.0.0.0/16"
# }

# # Creating Two subnets in different availability zones
# resource "aws_subnet" "subnet1" {
#   vpc_id     = aws_vpc.demo_vpc.id
#   cidr_block = "10.0.1.0/24"
#  availability_zone = "us-east-1a"
# }



