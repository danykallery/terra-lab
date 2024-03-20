
resource "aws_instance" "e_ip_1" {
  ami               = "ami-0f403e3180720dd7e"
  instance_type     = "t2.micro"
    tags = {
    Name = "Test-Server1"
  }
}


provider "aws" {
}
