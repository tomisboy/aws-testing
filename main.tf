resource "aws_vpc" "prod-vpc" {
  cidr_block = "12.0.0.0/16"
  tags = {
    Name = "dev"
  }
}

resource "aws_subnet" "subnet-1" {
  vpc_id            = aws_vpc.prod-vpc.id
  cidr_block        = "12.0.1.0/24"
  tags = {
    Name = "dev-01"
  }
}

