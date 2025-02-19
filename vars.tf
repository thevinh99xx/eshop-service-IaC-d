## Define Common variables #################################

variable "aws_region" {
  default     = null 
  type        = string
  description = "us-east-1"
}


### Define EKS variables ###################################
variable "cluster_name" {
  default     = "eks-cluster"
  type        = string
  description = "eks cluster name"
}

variable "cluster_node_name" {
  default     = "eks-node"
  type        = string
  description = "eks cluster node name"
}

variable "node_type" {
  default     = ["t3.large"]
  type        = list(any)
  description = "eks cluster node type"
}

variable "node_desired_size" {
  default = 4
  type    = number
  description = "eks-node desired size"
}

variable "node_max_size" {
  default = 4
  type    = number
  description = "eks-node max size"
}

variable "node_min_size" {
  default = 4
  type    = number
  description = "eks-node desired size"
}

variable "mgmt_nat_gw_ip" {
  type        = string
  description = "18.205.16.97"
}

variable "sg_rules" {
    description = "Security group policy definition (source security group id)"
    type = any
}

## Define RDS variables ###################################
variable "mariadb_version" {
  default     = "10.5.22"
  type        = string
  description = "Mariadb engine verion"
}

variable "mariadb_storage" {
  default     = 10
  type        = number
  description = "Mariadb Allocated storage(GB)"
}

variable "mariadb_port" {
  default     = 3306
  type        = number
  description = "Mariadb port"
}

variable "mariadb_name" {
  default     = "KeycloakDb"
  type        = string
  description = "Mariadb name for service application"
}

variable "mariadb_instance_class" {
  default     = "db.t3.medium"
  type        = string
  description = "Mariadb instance size"
}

variable "mariadb_master_user_name" {
  default     = "admin"
  type        = string
  description = "Maiadb master user name"
}
