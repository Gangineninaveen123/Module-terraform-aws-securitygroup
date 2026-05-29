# serch google -> aws security group terraform
resource "aws_security_group" "main" {
    name        = var.sg_name   #mandatory, need to give by user in project
    description = var.sg_discription   #optional, but we are making as mandatory for practice purpose
    vpc_id      = var.vpc_id

# aws security group, if we are not giving outboubd traffic, we cant connect to the internet, so its mantaory  to give outbound rule..
  # outbound is always open, because, traffic ll generate from the instance itself soo....
    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

    tags = merge(
        var.sg_tags,
        local.common_tags,
        {
            Name = "${var.project}-${var.environment}-${var.sg_name}"  #roboshop-dev-frontend(sg_name)
        }

    )
}

