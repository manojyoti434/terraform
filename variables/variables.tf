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
        Name = "Helloworld"
        purpose = "variables_demo"
    }
}

 variable "sg_name" {
   default = "vars-file-allow_all"
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