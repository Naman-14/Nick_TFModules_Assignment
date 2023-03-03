variable "tags" {
    type = map(any)
    description = "Here are the tags."
}

variable "bucket" {
    type = list(string)
    description = "Here is the S3 Bucket."
}