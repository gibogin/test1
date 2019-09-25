resource "aws_default_security_group" "dev_default" {
 vpc_id            = "vpc-06b39d33f177a947f"

  ingress {
    protocol  = -1
    self      = true
    from_port = 0
    to_port   = 0
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "user10_dev-default"
  }
}
