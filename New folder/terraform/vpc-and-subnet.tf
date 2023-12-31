#vpc
resource "aws_vpc" "myvpc" {
  cidr_block = "10.100.0.0/16"
}

#public subnets
resource "aws_subnet" "public1" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = "10.100.1.0/24"
  availability_zone = "ap-south-1a"

}
resource "aws_subnet" "public2" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = "10.100.2.0/24"
  availability_zone = "ap-south-1b"
}

#private subnets
resource "aws_subnet" "private1" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = "10.100.3.0/24"
  availability_zone = "ap-south-1a"
}
resource "aws_subnet" "private2" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = "10.100.4.0/24"
  availability_zone = "ap-south-1b"

}
