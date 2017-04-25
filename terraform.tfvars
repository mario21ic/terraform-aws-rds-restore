region          = "ca-central-1"

identifier      = "rds-backend-db"
allocated_storage = "10"
engine          = "postgres"
engine_version  = "9.6.1"
instance_class  = "db.t2.micro"
name            = "my-rds"
username        = "userdb"
password        = "clavedb"
publicly_accessible = "true"
backup_name     = "mybackup"

# Variables externas
vpc_id = "vpc-128f467b"
security_group_access = "sg-ae1bbfc7"
subnet_1_id = "subnet-d817c3b1"
subnet_2_id = "subnet-117e956a"
