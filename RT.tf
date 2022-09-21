resource "aws_route_table" "terra-rt" {
  vpc_id = terraform-vpc.id

  route {
    cidr_block = "192.168.3.0/24"
    gateway_id = terra-igw.id
  }

  tags = {
    Name = "terra-rt"
  }
}

resource "aws_route_table_association" "RT-A" {
  subnet_id      = terra-subnet-pub.id
  route_table_id = terra-rt.id
}

resource "aws_route_table_association" "RT-B" {
  gateway_id     = terra-igw.id
  route_table_id = terra-rt.id
}
