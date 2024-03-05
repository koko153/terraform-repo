terraform {
  backend "s3" {
    bucket         = "aws10-terraform-state"
    region         = "ap-northeast-2"
    key            = "infra/ec2/alb/terraform.tfstate"
    dynamodb_table = "aws10-terraform-locks"
    encrypt        = true
  }
}