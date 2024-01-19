provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-023c11a32b0207432"
  instance_type = "t2.micro"

  root_block_device {
    volume_type = "gp2"
    volume_size = 10
  }
  
  tags = {
    Name = "ExampleInstance"
  }
}


#The volume_size in the root_block_device block is changed from 10 to 20 GB.
#disable_api_termination is set to true to enable termination protection.

resource "aws_instance" "example" {
  ami           = "ami-023c11a32b0207432"
  instance_type = "t2.micro"

  root_block_device {
    volume_type = "gp2"
    volume_size = 20
  }
  disable_api_termination = true
  tags = {
    Name = "ExampleInstance"
  }
}