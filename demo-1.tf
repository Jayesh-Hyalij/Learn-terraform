resource "aws_instance" "auto" {
    ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 AMI (Free Tier eligible)
    instance_type = "t2.micro"              # Free Tier eligible instance type
    key_name = "demo-1" # Key pair name for SSH access
        tags = {
            Name = "AutoInstance"
        }
  
}
provider "aws" {
  region = "us-east-1"
}
