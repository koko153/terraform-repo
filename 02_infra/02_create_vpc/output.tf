output "vpc_id" {
    value = aws_vpc.aws10-vpc.id
}
output "public-subnet-2a-id" {
    value = aws_subnet.aws10-public-subnet-2a.id
}
output "public-subnet-2c-id" {
    value = aws_subnet.aws10-public-subnet-2c.id
}
output "private-subnet-2a-id" {
    value = aws_subnet.aws10-private-subnet-2a.id
}
output "private-subnet-2c-id" {
    value = aws_subnet.aws10-private-subnet-2c.id
}
