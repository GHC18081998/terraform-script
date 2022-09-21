resource "aws_internet_gateway" "terra-igw" {
  vpc_id = terraform-vpc

  tags = {
    Name = "terra-igw"
  }
}