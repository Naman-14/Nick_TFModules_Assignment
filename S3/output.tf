output "BucketCreation" {
    value= [for i in var.bucket: i]
    description = "My S3 Bucket"
}