resource "aws_instance" "web" {
  ami           = "ami-0e35ddab05955cf57"
  instance_type = "t2.micro"
  subnet_id     = "subnet-05cc8cadb7bec5687"

  tags = {
    Name = "HelloWorld"
    }
}