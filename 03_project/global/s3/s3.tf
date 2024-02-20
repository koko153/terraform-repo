resource "aws_s3_bucket" "terraform-state" {
    bucket = "aws10-terraform-state"

    # 실수로 버킷을 삭제하는 것을 방지한다.
    # lifecycle {
    #   prevent_destroy = true
    # }

    lifecycle {
      prevent_destroy = false
    }
    force_destroy = true

    tags = {
        Name = "aws10-terraform-state"
    }
}

resource "aws_dynamodb_table" "terraform-locks" {
    name = "aws10-terraform-locks"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
      name = "LockID"
      type = "S"
    }
}