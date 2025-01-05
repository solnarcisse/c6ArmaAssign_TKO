resource "aws_rds_cluster" "default" {

  cluster_identifier      = "aurora-clusterdb01"
  engine                  = "aurora-mysql"
  engine_version          = "5.7.mysql_aurora.2.11.5"
  availability_zones      = ["eu-west-2c"]
  database_name           = "TMMCdb01"
  master_username         = "TKOJapanDB"
  master_password         = "Ouroboro"
  backup_retention_period = 0
  apply_immediately = true 
  skip_final_snapshot = true
  
}