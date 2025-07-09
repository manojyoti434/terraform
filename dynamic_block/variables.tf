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
    Name    = "roboshop"
    purpose = "variables_demo"
  }
}

variable "sg_name" {
  default = "allow_all"
}

variable "sg_description" {
  type    = string
  default = "allowing all ports from internet"
}

variable "from_port" {
  default = 0
}

variable "to_port" {
  type    = number
  default = 0
}

variable "cidr_blocks" {
  type    = list(string)
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
  default = {
    mongodb  = "t3.micro" #each keyword is assigned for every iteration, you will get each.key
    redis    = "t3.micro"
    rabbitmq = "t3.micro"
    mysql    = "t3.small"

    #default = ["mongodb","redis","rabbitmq","mysql"] #see other files for to keep this aas it is
  }
}
variable "Zone_id" {
  default = "Z06583041CTNGQNAS8NUZ"
}
variable "domain_name" {
  default = "dawsmano.site"
}

variable "ingress_ports" {
  default = [ # list(map)
    {
      from_port = 22
      to_port   = 22
    },
    {
      from_port = 80
      to_port   = 80
    },
    {
      from_port = 8080
      to_port   = 8080
    }
  ]
}