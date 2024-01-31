module "rds" {
  source               = "terraform-aws-modules/rds/aws"
  version              = "6.3.1"
  engine               = data.aws_db_instance.rds_mysql.engine
  engine_version       = data.aws_db_instance.rds_mysql.engine_version
  allocated_storage    = data.aws_db_instance.rds_mysql.allocated_storage
  instance_class       = data.aws_db_instance.rds_mysql.db_instance_class
  parameter_group_name = "default.mysql5.7"
  storage_type         = data.aws_db_instance.rds_mysql.storage_type
  identifier           = "mydb"
  username             = "admin"
  password             = "password"
  skip_final_snapshot  = true
  tags = {
    name = "MYSQL_DB_TF"
  }

}