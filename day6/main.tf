resource "aws_security_group" "sgw" {
  name        = "demo-sgw"
  description = "Implement some security"

ingress {
  cidr_blocks  = ["0.0.0.0/0"]
  from_port   = 22
  to_port     = 22
  protocol = "tcp"

}

ingress {
  cidr_blocks  = ["0.0.0.0/0"]
  from_port   = 80
  to_port     = 80
  protocol = "tcp"

}

egress {
  cidr_blocks  = ["0.0.0.0/0"]
  from_port   = 0
  to_port     = 0
  protocol = "-1"
}

}

resource "aws_instance" "server" {
  ami = "ami-0d7a109bf30624c99"
  instance_type = "t2.micro"
  key_name = "demo"
vpc_security_group_ids = [aws_security_group.sgw.id]
  

tags = {
  Name = "ec2-1"
}

#  provisioner "file" {
#    source = "C:\\Users\\admin\\Desktop\\terraform\\readme.txt"
#    destination = "/home/ec2-user/readme.txt"
#    }

provisioner "remote-exec" {
  inline = [ 
  "sudo yum update -y",
  "sudo yum install httpd -y",
  "sudo systemctl start httpd", 
   "sudo echo My Name  Dany Ouseph >> /var/www/html/index.html"
   ]
}
connection {
  type = "ssh"
  user = "ec2-user"
  private_key = file("C:\\Users\\admin\\Downloads\\demo.pem")
  host = self.public_ip
}
}