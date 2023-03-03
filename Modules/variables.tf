variable "tag_name_value" {
    type = string
  
}

variable "tag_owner_value" {
    type = string
  
}

variable "tag_purpose_value" {
    type = string
  
}

# .......FOR VPC........

variable "cidr_block_value_cidr" {
  type = string
}


#........FOR SUBNET........ 

variable "availability_zone_SUBNET_mdval_1" {
  type = string
}

variable "availability_zone_SUBNET_mdval_2" {
  type = string
}

variable "instance_tenancy_value_instance" {
  type = string
}

variable "cidr_block_SUBNET_1_value" {
  type = string
}

variable "cidr_block_SUBNET_2_value" {
  type = string
}


#........FOR SECURITY GROUP........ 


variable "cidr_blocks_same_value" {
    type = string
  
}


#..........S3 BUCKET.........

variable "Tags_value" {
    type = map(any)
  
}

variable "bucket_value" {
    type = list(any)
  
}



#..........EC2........... 


variable "ami_id_EC2" {
    type = string
  
}

variable "instance_type_EC2" {
    type = string
  
}

variable "EC2s_value" {
    type = list(string)
    description = "This is the EC2 instances."
}

