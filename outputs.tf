#here sg_id is related to frontend, remeber that.
output "sg_id"{
    value = aws_security_group.main.id
}