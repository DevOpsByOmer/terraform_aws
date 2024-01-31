data "aws_db_instance" "rds_mysql" {
  db_instance_identifier = "my-rds-instance"
  db_instance_class      = "db.t2.micro"
  engine                 = "mysql"
  engine_version         = "5.7"
  storage_type           = "gp2"
  allocated_storage      = 20
  publicly_accessible    = false
}

