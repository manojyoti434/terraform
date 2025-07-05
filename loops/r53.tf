resource "aws_route53_record" "www" {
count = 4
zone_id = var.Zone_id
name = "${var.instances[count.index]}.${var.domain_name}"
type = "A"
ttl = 1
records = [aws_instance.roboshop[count.index].private_ip]
}



#if you have list, go for count loop
#if you have map or set, go with forloop in terraform