#Default region us-east-1
provider_region = "us-east-1"

DMS-Instance = {
  "Data-Base-Migration-Service" = {
    replication_instance_class  = "dms.t2.micro"
    replication_instance_id     = "test-dms-replication-instance"
    engine_version              = "3.1.4"
    allocated_storage           = 20
    vpc_security_group_ids      = ["sg-01a8fbcaf9882e6b2"]
    replication_subnet_group_id = aws_dms_replication_subnet_group.replication-subnet-group.id
    multi_az                    = true
    publicy_accessible          = true
    tags = {
      Name = "DMS-MODULE-TEST"
    }
  }
}

DMS-Subnet-Group = {
  "Replication-Subnet-Group" = {
    replication_subnet_group_description = "Test replication subnet group"
    replication_subnet_group_id          = "test-dms-replication-subnet-group"
    subnet_ids                           = ["subnet-08f1c81227a0e41f6", "subnet-0a07135c595df28d9"]
    tags = {
      Name = "test"
    }
  }
}