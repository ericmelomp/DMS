resource "aws_dms_replication_instance" "replication-instance" {
  for_each = var.DMS-Instance

  replication_instance_class  = each.value["replication_instance_class"]
  replication_instance_id     = each.value["replication_instance_id"]
  engine_version              = each.value["engine_version"]
  allocated_storage           = each.value["allocated_storage"]
  vpc_security_group_ids      = each.value["vpc_security_group"]
  replication_subnet_group_id = each.value["replication_subnet_group_id"]
  multi_az                    = each.value["multi_az"]
  publicly_accessible         = each.value["pubicly_accessible"]
  tags                        = each.value["tags"]
}

resource "aws_dms_replication_subnet_group" "replication-subnet-group" {
  for_each = var.DMS-Subnet-Group

  replication_subnet_group_description = each.value["replication_subnet_group_description"]
  replication_subnet_group_id          = each.value["replication_subnet_group_id"]
  subnet_ids                           = each.value["subnet_ids"]
  tags                                 = each.value["tags"]
}