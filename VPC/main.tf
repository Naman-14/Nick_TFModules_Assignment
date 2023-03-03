resource "aws_vpc" "nick_vpc" {
  cidr_block       = var.cidr_block_value
  instance_tenancy = var.instance_tenancy_value

  tags = {
    Name = var.tag_name
    Owner = var.tag_owner
    Purpose = var.tag_purpose
  }
}

resource "aws_subnet" "nick_subnet_1" {
  vpc_id     = "${aws_vpc.nick_vpc.id}" 
  cidr_block = var.cidr_block_SUBNET_1
  availability_zone = var.availability_zone_SUBNET_1
  tags = {
    Name = var.tag_name
    Owner = var.tag_owner
    Purpose = var.tag_purpose
  }
}


# SUBNET 2


resource "aws_subnet" "nick_subnet_2" { 
  vpc_id     = "${aws_vpc.nick_vpc.id}"
  cidr_block = var.cidr_block_SUBNET_2
  availability_zone = var.availability_zone_SUBNET_2
  tags = {
    Name = var.tag_name
    Owner = var.tag_owner
    Purpose = var.tag_purpose
  }
}



# Security Group

resource "aws_security_group" "nick_sg" {
  name        = "Naman Moolri"
  vpc_id      = "${aws_vpc.nick_vpc.id}"

  ingress {
    description      = "HTTP from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = [var.cidr_blocks_same]
  }

  ingress {
    description      = "HTTPS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [var.cidr_blocks_same]
  }

  egress {
    description      = "VPC TO HTTP"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = [var.cidr_blocks_same]
  }

  egress {
    description      = "VPC TO HTTPS"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [var.cidr_blocks_same]
  }

  

  tags = {
    Name = var.tag_name
    Owner = var.tag_owner
    Purpose = var.tag_purpose
  }
}