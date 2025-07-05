 resource "aws_route53_record" "www" {
for_each = aws_instance.roboshop
zone_id = var.Zone_id
name = "${each.key}.${var.domain_name}"   #mongodb.dawsmano.site
type = "A"
ttl = 1
records = [each.value.private_ip]
} 



#if you have list, go for count loop
#if you have map or set, go with forloop in terraform

#if you dont want to change variables and keep as list , you can keep default, then you need to use toset function, and each.key same as each.value and need to give instance_type as t3.micro same for all simply 
#all the above will be in variables.tf file