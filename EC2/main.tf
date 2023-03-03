# 2 EC2's IN SUBNET 1

resource "aws_instance" "Nick_1_EC2" {
  count = length(var.EC2s)  
  ami           = var.ami_id
  instance_type = var.inst_type
  vpc_security_group_ids = ["${Modules.aws_security_group.nick_sg.id}"]
  

  subnet_id = "${Modules.aws_subnet.nick_subnet_1.id}"

  tags = {
    Name = var.EC2s[count.index]
    Owner = var.tag_owner
    Purpose = var.tag_purpose
  }

  volume_tags = {
    Name = var.tag_name
    Owner = var.tag_owner
    Purpose = var.tag_purpose
  }


}


# 2 EC2's IN SUBNET 2

resource "aws_instance" "Nick_2_EC2" {

  count = 2
  
  ami           = var.ami_id
  instance_type = var.inst_type
  vpc_security_group_ids = ["${Modules.aws_security_group.nick_sg.id}"]

  subnet_id = "${Modules.aws_subnet.nick_subnet_2.id}"

  tags = {
    Name = var.tag_name
    Owner = var.tag_owner
    Purpose = var.tag_purpose
  }

  volume_tags = {
    Name = var.tag_name
    Owner = var.tag_owner
    Purpose = var.tag_purpose
  }

}