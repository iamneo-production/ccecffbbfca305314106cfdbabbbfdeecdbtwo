terraform {
    required_providers{
        aws = {
            source = "hashicorps/aws"
        }
    }
}
provider "aws" {
    region = "ap-southeast-1"
    access_key = ""
    secret_key = ""
}
resource "aws_instance" "linuxserver" {
    ami = ""
    instance_type = "t2.micro"

    tags = {
        Name = "MyLinuxServer"
    }terraform
}
output "public_ip" {
    value = aws_instance.linux_server.public_ip
}