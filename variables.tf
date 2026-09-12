variable "sg_name" {
    type = string   # mandatory,ll give or tell this user need to give variables in their project to create infra-> sg
    
}

variable "sg_discription" {
    type = string # i am making mandotory, ll give or tell this user need to give variables in their project to create infra-> sg_discription
}

variable "vpc_id" {
    type = string #mandatory, ll give or tell this user need to give variables in their project to create infra-> vpc_id

}

variable "project" {
    type = string #mandatory,ll give or tell this user need to give variables in their project to create infra-> project

}

variable "environment" {
    type = string #mandatory, ll give or tell this user need to give variables in their project to create infra-> environment

}

variable "sg_tags" {
    type = map(string) #ll give or tell this user need to give variables in their project to create infra-> sg_tags
    default = {} #if we give default, then it is optional
}