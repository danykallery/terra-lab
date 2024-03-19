output "vpc_id" {
  value = aws_vpc.demo

}

output "cidr_range" {
  value = aws_vpc.demo.cidr_block
}