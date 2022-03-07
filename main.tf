resource "aws_vpc" "prod-vpc" {
  cidr_block = "12.0.0.0/16"
  tags = {
<<<<<<< HEAD
    Name = "1111dev-1"
=======
    Name = "int-1"
>>>>>>> c0136ab9b936402a34de2e94919d05284216672a
  }
}

resource "aws_subnet" "subnet-1" {
  vpc_id            = aws_vpc.prod-vpc.id
  cidr_block        = "12.0.1.0/24"
  tags = {
    Name = "dev-02"
  }
}

