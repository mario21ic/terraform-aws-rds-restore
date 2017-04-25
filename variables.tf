variable "region" {
  description = "Regions aws"
}

variable "identifier" {
  description = "Identifier for your DB"
}

variable "allocated_storage" {
  description = "Storage size in GB"
}

variable "engine" {
  description = "Engine type, example values mysql, postgres"
}

variable "engine_version" {
  description = "Engine version"
}

variable "backup_name" {
  description = "Backup name"
}

variable "instance_class" {
  description = "Instance class"
}

variable "name" {
  description = "name instance"
}

variable "username" {
  description = "usr for dev db"
}

variable "password" {
  description = "password, provide through your ENV variables"
}

variable "sg_name" {
  default     = "rds_sg"
  description = "Tag Name for sg"
}


variable "publicly_accessible" {
}

# vpc variables

variable "vpc_id" {
  description = "vpc id"
}

variable "subnet_1_id" {
  description = "Subnet id"
}
variable "subnet_2_id" {
  description = "Subnet id"
}

variable "security_group_access" {
  description = "security group id"
}

