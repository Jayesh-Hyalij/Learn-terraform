provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0" # Example Amazon Linux 2 AMI in ap-south-1
  instance_type = "t2.micro"
}
