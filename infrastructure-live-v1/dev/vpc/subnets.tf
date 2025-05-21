resource "aws_subnet" "private_1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.0.0/19"
  availability_zone = "eu-central-1a"

  tags = {
    Name                              = "dev-private-${aws_subnet.private_1a.availability_zone}"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/dev"       = "owned"
  }
}

resource "aws_subnet" "private_1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.32.0/19"
  availability_zone = "eu-central-1b"

  tags = {
    Name                              = "dev-private-${aws_subnet.private_1b.availability_zone}"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/dev"       = "owned"
  }
}

resource "aws_subnet" "public_1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.64.0/19"
  availability_zone = "eu-central-1a"
  map_public_ip_on_launch = true

  tags = {
    Name                              = "dev-public-${aws_subnet.public_1a.availability_zone}"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/dev"       = "owned"
  }
}

resource "aws_subnet" "public_1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.96.0/19"
  availability_zone = "eu-central-1b"
  map_public_ip_on_launch = true

  tags = {
    Name                              = "dev-public-${aws_subnet.public_1b.availability_zone}"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/dev"       = "owned"
  }
}