provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami = "ami-080e1f13689e07408"
  instance_type = "t2.micro"
  tags = {
    Name = "Example_Instance"
  }
  subnet_id = "subnet-0e0522534b8b37ed6"
  associate_public_ip_address = true
}
