provider "aws" {
  region        = "${var.region}"
}

resource "aws_db_instance" "rds_backend_db" {
  depends_on             = ["aws_security_group.sg_backend_db"]
  identifier             = "${var.identifier}"
  allocated_storage      = "${var.allocated_storage}"
  engine                 = "${var.engine}"
  engine_version         = "${var.engine_version}"
  instance_class         = "${var.instance_class}"
  //name                   = "${var.name}"
  username               = "${var.username}"
  password               = "${var.password}"
  publicly_accessible    = "${var.publicly_accessible}"
  #db_parameter_groups    = ["${aws_db_parameter_group.rds_pg.id}"]
  vpc_security_group_ids = ["${aws_security_group.sg_backend_db.id}"]
  db_subnet_group_name   = "${aws_db_subnet_group.sn_group_backend_db.id}"

  snapshot_identifier = "${var.backup_name}"
  skip_final_snapshot = true
}

resource "aws_db_subnet_group" "sn_group_backend_db" {
  name        = "sn_group_${var.name}"
  description = "Bookingmotor group of subnets"
  subnet_ids  = ["${var.subnet_1_id}", "${var.subnet_2_id}"]
}

resource "aws_security_group" "sg_backend_db" {
  name        = "sg_db_${var.name}"
  description = "Allow all inbound traffic"
  vpc_id      = "${var.vpc_id}"

  ingress {
    from_port   = 0
    to_port     = 5432
    protocol    = "TCP"
    security_groups = ["${var.security_group_access}"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "sg-rds-${var.name}"
  }
}
