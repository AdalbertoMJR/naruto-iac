terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "naruto_server" {
  ami           = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"
  key_name = "naruto-iac"
 # user_data = <<-EOF
 #                #!/bin/bash
 #                cd /home/ubuntu
 #                echo "<h1>Feito com terraform</h1>" > index.html
 #                nohup busybox httpd -f -p 8080 &
 #                EOF

  tags = {
    Name = "naruto-ec2-1"
  }
}
