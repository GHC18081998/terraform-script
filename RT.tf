resource "aws_route_table" "terra-rt" {
  vpc_id = terraform-vpc

  route {
    cidr_block = "192.168.3.0/24"
    gateway_id = terra-igw
  }

  tags = {
    Name = "terra-rt"
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = terra-subnet-pub
  route_table_id = terra-rt
}

resource "aws_route_table_association" "b" {
  gateway_id     = terra-igw
  route_table_id = terra-rt
}