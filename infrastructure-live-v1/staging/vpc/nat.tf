resource "aws_eip" "nat" {
    vpc = true
    
    tags = {
        Name = "staging-nat"
    }
}

resource "aws_nat_gateway" "main" {
    allocation_id = aws_eip.nat.id
    subnet_id     = aws_subnet.public_1a.id

    tags = {
        Name = "staging-nat"
    }

    depends_on = [aws_internet_gateway.main]
}