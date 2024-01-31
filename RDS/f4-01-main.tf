module "rds" {
  source  = "terraform-aws-modules/rds/aws"
  version = "6.3.1"

  family                    = "mysql5.7"
  instance_class            = "db.t2.micro"
  engine                    = "mysql"
  engine_version            = "5.7"
  major_engine_version      = "15.00"
  storage_type              = "gp2"
  allocated_storage         = 20
  publicly_accessible       = false
  create_db_parameter_group = false
  identifier                = "mydb"
  username                  = "admin"
  password                  = "password"
  skip_final_snapshot       = true
  tags = {
    name = "MYSQL_DB_TF"
  }
}
