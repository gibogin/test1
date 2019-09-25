resource "aws_default_network_acl" "dev_default" {
  default_network_acl_id = "acl-0f5abf6f4bc1a0faa"

  ingress {
    protocol   = -1
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  egress {
    protocol   = -1
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  subnet_ids = [
    "subnet-0b371aea723b5f4be",
  ]

  tags {
    Name = "user10_dev-default"
  }
}
