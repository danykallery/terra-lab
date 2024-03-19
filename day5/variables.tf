# variable "ami" {
#   default = "ami-0d7a109bf30624c99"
#   type = string
#   description = "This is my AMI for the Demo-instnace"

# }

#  variable "size" {
#    type = list(any)
#    default = [ "t2.micro", "t3.micro", "t2.nano" ]
#  }

#  variable "info" {
#    type = map(any)
#   default = {
#      new1 = "new1"
#      new1 = "t2.micro"
#      new2 = "new2"
#      type2 = "t2.small"
#      new3 = "new3"
#      type3 = "t3.micro"
#    }
#  }

 variable "ami" {
   default = "ami-0d7a109bf30624c99"
   type = string
   description = "This is my AMI for the Demo-instnace"

 }

 variable "info" {
    type = list(any)
   default = [ "t2.small", "t3.small", "t2.micro", "t2.small" ]
  }