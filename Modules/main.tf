# VPC Module
module "nick_vpc" {
    source = "../VPC"
    cidr_block_value = var.cidr_block_value_cidr
    instance_tenancy_value = var.instance_tenancy_value_instance
    tag_name = var.tag_name_value
    tag_owner = var.tag_owner_value
    tag_purpose = var.tag_purpose_value
    availability_zone_SUBNET_1 = var.availability_zone_SUBNET_mdval_1
    availability_zone_SUBNET_2 = var.availability_zone_SUBNET_mdval_2
    cidr_block_SUBNET_1 = var.cidr_block_SUBNET_1_value
    cidr_block_SUBNET_2 = var.cidr_block_SUBNET_2_value
    cidr_blocks_same = var.cidr_blocks_same_value 
}

# S3 Module
module "nick_S3" {
    source = "../S3"
    tags = var.Tags_value
    bucket = var.bucket_value
}


# EC2 Module
module "nick_EC2" {
    source = "../EC2"
    EC2s = var.EC2s_value
    ami_id = var.ami_id_EC2
    inst_type = var.instance_type_EC2
    tag_name = var.tag_name_value
    tag_owner = var.tag_owner_value
    tag_purpose = var.tag_purpose_value
}
