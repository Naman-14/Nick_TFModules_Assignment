variable "ami_id" {
  type = string
}

variable "inst_type" {
  type = string
}

variable "tag_name" {
  type = string
}

variable "tag_owner" {
  type = string
}

variable "tag_purpose" {
  type = string
}

variable "EC2s" {
    type = list(string)
    description = "This is the EC2 instances."
}

