resource "aws_instance" "terra" {
  ami           = "ami-0568773882d492fc8"
  instance_type = "t2.micro"
}