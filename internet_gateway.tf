
resource "aws_internet_gateway" "dev" {
  vpc_id            = "vpc-06b39d33f177a947f"

  tags = {
    Name = "user10_dev"
  }
}
