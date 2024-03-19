# data "aws_ami" "ubuntu" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   owners = ["099720109477"] # Canonical
# }

# resource "aws_instance" "web" {
#   ami           = data.aws_ami.ubuntu.id
#   instance_type = "t2.micro"

#   tags = {
#     Name = "demo-ec2-1"
#   }
# }


# output "pub-ip" {
#   value = aws_instance.web.public_ip
# }

# output "private-ip" {
#   value = aws_instance.web.private_ip
#   description = "The Private IP for your Ec2."
#   sensitive   = true # this will ensure to keep output value sensitive until and unless calling it particularly.
# }
