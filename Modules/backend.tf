terraform {
  backend "s3" {
    bucket = "nick-1409"
    key    = "nicktffile.tfstate"
    region = "ap-south-1"
  }
}