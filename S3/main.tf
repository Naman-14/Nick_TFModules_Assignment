resource "aws_s3_bucket" "Nick_Bucket"{
    count=length(var.bucket)  
    bucket=var.bucket[count.index]  
    tags=var.tags
}

