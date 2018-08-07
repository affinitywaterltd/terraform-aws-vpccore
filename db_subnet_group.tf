resource "aws_db_subnet_group" "group" {
  name       = "database_subnet"
  subnet_ids = ["${aws_subnet.private.*.id}"]

  tags {
    Name = "DB Subnet Group"
  }
}

output "db_subnet_group" {
  value = "${aws_db_subnet_group.group.*.name}"
}
