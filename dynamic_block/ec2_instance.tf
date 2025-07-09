resource "aws_instance" "roboshop" {
  for_each = var.instances
  #for_ech = toset(var.instances) #this is when you keep as list and use foreachloop
  ami           = var.ami_id   #right and left side names need not be same#
  instance_type =   each.value
  #instance_type =   "t3.micro" this isnneded when you keep as list
  vpc_security_group_ids = [ aws_security_group.allow_all.id]


  tags = {
    Name = each.key
  }

}
  

resource "aws_security_group" "allow_all" {
    name        = var.sg_name
    description = var.sg_description
    
    
    dynamic "ingress" {
    for_each = var.ingress_ports
    content {
      from_port        = ingress.value["from_port"]
      to_port          = ingress.value["to_port"]
      protocol         = "-1"
      cidr_blocks      = var.cidr_blocks
      ipv6_cidr_blocks = ["::/0"]
    }
  }

    egress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = var.sg_tags
}



    