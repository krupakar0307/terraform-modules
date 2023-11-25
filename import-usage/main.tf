provider "aws"{
   region = "ap-south-1"
}


import {
  to = aws_s3_bucket.bucket
  id = "bucket-name"
}
