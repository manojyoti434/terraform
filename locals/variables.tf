variable "project" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}

variable "component" {
    default = "cart"
}

variable "common_tags"{
    default = {
        Project = "roboshop"
        Terraform = "true"
    }
}

/* variable "final-name" {
    default = "${var.project}-${var.environment}-${var.component}"
} */
#it won't work above ,variables can't refer other variables inside this variables file itself, so we can use locals
# ec2 name = cart
# ec2 name = roboshop-dev-cart
