

# # resource "aws_instance" "Web1" {
# #   ami           = var.ami
# #   instance_type = var.info.type1

# #   tags = {
# #     Name = "My-${var.info.name1}"
# #   }
# # }

# # resource "aws_instance" "DB1" {
# #   ami           = var.ami
# #   instance_type = var.info.type2

# #   tags = {
   
# # # Name = "Test-St-${var.size[1]}"
# #     Name = "My-${var.info.name2}"
# #   }
# # }


# # resource "aws_instance" "ST1" {
# #   ami           = var.ami
# #   instance_type = var.info.type3

# #   tags = {
# #     # Name = "Test-St-${var.size[2]}"
# #     Name = "My-${var.info.name3}"
# #   }
# # }


#  resource "aws_instance" "webserver" {
#    ami           = "ami-0d7a109bf30624c99"
#    instance_type = "t2.micro"
#    count = 5

#    tags = {
#      # Name = "Test-St-${var.size[2]}"
#      Name = "My-Test1-${count.index}"
#    }
#  }

#   resource "aws_eip" "eip" {
#   count = 5
#   instance = aws_instance.webserver[count.index].id
#  tags = {
#      # Name = "Test-St-${var.size[2]}"
#      Name = "My-EIP-${count.index}"
#    }

#   }

# MAP

#   resource "aws_instance" "webserver" {
#     for_each = var.info
#     ami           = var.ami
#     instance_type = each.value
    
   
#     tags = {
#       # Name = "Test-St-${var.size[2]}"
#       Name = "My-Test-${each.key}"
#     }
#   }

###LIST


   resource "aws_instance" "webserver" {
     for_each = toset(var.info)
     ami           = var.ami
     instance_type = each.value
    
   
     tags = {
       # Name = "Test-St-${var.size[2]}"
       Name = "My-Test-${each.key}"
     }
   }
