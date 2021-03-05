resource "aws_vpc" "vpc" {
  cidr_block = "10.10.0.0/16"

  tags = {
    Name = "vpc"
  }
}

resource "aws_subnet" "subnet1" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.10.0.0/24"
    tags = {
        name = "subnet1"
    }
}

resource "aws_subnet" "subnet2" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.10.1.0/24"
    tags = {
        name = "subnet2"
    }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "my_igw"
  }
}
