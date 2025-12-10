# serch google -> aws security group terraform
resource "aws_security_group" "main" {
    name        = var.sg_name   #mandatory, need to give by user in project
    description = var.sg_discription   #optional, but we are making as mandatory for practice purpose
    vpc_id      = var.vpc_id

    tags = merge(
        var.sg_tags,
        local.common_tags,
        {
            Name = "${var.project}-${var.environment}-${var.sg_name}"  #roboshop-dev-frontend(sg_name)
        }

    )
}