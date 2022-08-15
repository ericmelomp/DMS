variable "provider_region" {
  description = "Input the region of the resources which will be created"
  type        = string
}

variable "DMS-Instance" {
  description = "Set the configuration of my DMS instance"
  type = map(object({
    replication_instance_class  = string
    replication_instance_id     = string
    engine_version              = string
    allocated_storage           = number
    vpc_security_group_ids      = list(string)
    replication_subnet_group_id = string
    multi_az                    = bool
    publicy_accessible          = bool
    tags                        = map(string)
  }))
}

#Nome do ARN amigável
#Descrição da instância de replicação
#Incluir classes de instância da geração anterior
#Incluir versões beta do DMS

variable "DMS-Subnet-Group" {
  description = "Create a new replication subnet group for DMS"
  type = map(object({
    replication_subnet_group_description = string
    replication_subnet_group_id          = string
    subnet_ids                           = list(string)
    tags                                 = map(string)
  }))
}