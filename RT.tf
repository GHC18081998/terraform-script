resource "aws_route_table" "terra-rt" {
  vpc_id = aws_vpc.terraform-vpc.id

  route {
    cidr_block = "192.168.3.0/24"
    gateway_id = aws_internet_gateway.terra-igw.id
  }

  tags = {
    Name = "terra-rt"
  }
}

resource "aws_route_table_association" "RT-A" {
  subnet_id      = aws_subnet.terra-subnet-pub.id
  route_table_id = aws_route_table.terra-rt.id
}

resource "aws_route_table_association" "RT-B" {
  gateway_id     = aws_internet_gateway.terra-igw.id
  route_table_id = aws_route_table.terra-rt.id
}