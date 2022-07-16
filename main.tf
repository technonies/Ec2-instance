terraform {
 required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "~> 3.0"
   }
 }
}
resource "aws_instance" "demo" {
 ami = var.ami
 instance_type = var.type
 
 tags = {
   name = "Demo System"
 }
}