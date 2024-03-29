# dev_public
resource "aws_route_table" "dev_public" {
   vpc_id            = "vpc-06b39d33f177a947f"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.dev.id}"
  }

  tags {
    Name = "user10_dev-public"
  }
}

resource "aws_route_table_association" "dev_public_1a" {
  subnet_id      = "${aws_subnet.public_1a.id}"
  route_table_id = "${aws_route_table.dev_public.id}"
}

resource "aws_route_table_association" "dev_public_1c" {
  subnet_id      = "${aws_subnet.public_1c.id}"
  route_table_id = "${aws_route_table.dev_public.id}"
}