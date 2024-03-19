variable "cidr" {
  type = string
}

variable "tenancy" {
  type    = string
  default = "default"


}

variable "tags" {
    type = string

}

variable "ami" {
   default = "ami-0d7a109bf30624c99"
   type = string
   description = "This is my AMI for the Demo-instnace"

 }

 variable "info" {
    type = list(any)
   default = [ "t2.small", "t3.small", "t2.micro", "t2.small" ]
  }

