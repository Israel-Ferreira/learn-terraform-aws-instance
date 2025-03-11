terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "5.88.0"
      }
    }
}

provider "aws" {
    region = "us-east-1"
}


resource "aws_instance" "primeira-ec2-terraform" {
    ami = "ami-04b4f1a9cf54c11d0"
    instance_type = "t2.micro"
    key_name = "Curso-Terraform-Ansible"
    # user_data = <<-EOF
    #   #!/bin/bash
    #   cd /home/ubuntu

    #   echo "<h1> Feito com o Terraform </h1>" >> index.html
    #   nohup busybox httpd -f -p 8080 &
    # EOF
    tags = {
      Name = "Teste AWS - Ansible "
    }
}
