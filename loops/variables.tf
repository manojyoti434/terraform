variable "ami_id" {
  description = "ami id of joindevops RHEL9"
  type        = string
  default     = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    default = "t3.micro"
}

variable "ec2_tags" {
    default = {
        Name = "roboshop"
        purpose = "variables_demo"
    }
}

 variable "sg_name" {
   default = "allow_all"
 }

variable "sg_description" {
    type = string
    default = "allowing all ports from internet"
}

variable "from_port" {
    default = 0
}

variable "to_port" {
    type = number
    default = 0
}

variable "cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

variable "sg_tags" {
    default = {
        Name = "allow_all"
    }

}

variable "environment" {
    default = "dev"
}

variable "instances" {
    default = ["mongodb","mysql","redis","rabbitmq"]
}

variable "Zone_id" {
    default ="Z06583041CTNGQNAS8NUZ"
}
variable "domain_name" {
    default = "dawsmano.site"
}