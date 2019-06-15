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
   default = "web-server-"
   }

variable "target_group_arn" {
   default = "arn:aws:elasticloadbalancing:ca-central-1:228804139688:targetgroup/GB-TIC-TG1/02385ddf6ca63bf7"
   }
