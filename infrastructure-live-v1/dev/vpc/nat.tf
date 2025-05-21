resource "aws_eip" "nat" {
    vpc = true
    
    tags = {
        Name = "dev-nat"
    }
}

resource "aws_nat_gateway" "main" {
    allocation_id = aws_eip.nat.id
    subnet_id     = aws_subnet.public_1a.id

    tags = {
        Name = "dev-nat"
    }

    depends_on = [aws_internet_gateway.main]
}