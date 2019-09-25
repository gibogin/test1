
resource "aws_subnet" "public_1a" {
  vpc_id            = "vpc-06b39d33f177a947f"
  availability_zone = "ap-northeast-1a"
  cidr_block        = "104.0.1.0/24"

  tags {
    Name = "user10_public-1a"
  }
}

resource "aws_subnet" "public_1c" {
  vpc_id            = "vpc-06b39d33f177a947f"
  availability_zone = "ap-northeast-1c"
  cidr_block        = "104.0.2.0/24"

  tags {
    Name = "user10_public-1c"
  }
}
