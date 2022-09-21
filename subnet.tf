resource "aws_subnet" "terra-subnet-pub" {
  vpc_id     = terraform-vpc
  cidr_block = "192.168.1.0/24"

  tags = {
    Name = "terra-subnet-pub"
  }
}

resource "aws_subnet" "terra-subnet-pvt" {
  vpc_id     = terraform-vpc
  cidr_block = "192.168.2.0/24"

  tags = {
    Name = "terra-subnet-pvt"
  }
}