variable "security_g" {
   default = "sg-0c62dbfab824079be"
   }

variable "keypair" {
   default = "Green_Berets_Key"
   }

variable "vpc_security_group_id" {
   default = "vpc-e57f118d"
   }

variable "subnet_id" {
   default = "subnet-4e71ed26"
   }

variable "instance_count" {}

variable "tag_name" {
   default = "web-server"
   }
