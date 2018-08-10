resource "aws_db_subnet_group" "group" {
  name        = "database_subnet_${var.vpc_environment_tag}"
  subnet_ids  = ["${aws_subnet.private.*.id}"]
  description = "All private instances for RDS placement"

  tags {
    Name = "DB Subnet Group"
  }
}

output "db_subnet_name" {
  value = "${aws_db_subnet_group.group.name}"
}
