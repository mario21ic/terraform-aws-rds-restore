output "db_instance_id" {
  value = "${aws_db_instance.rds_backend_db.id}"
}

output "db_instance_address" {
  value = "${aws_db_instance.rds_backend_db.address}"
}

output "subnet_group" {
  value = "${aws_db_subnet_group.sn_group_backend_db.name}"
}

output "rds_address" {
  value = "${aws_db_instance.rds_backend_db.address}"
}
