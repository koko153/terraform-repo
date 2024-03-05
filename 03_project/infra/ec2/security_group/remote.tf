data "terraform_remote_state" "vpc" {
    backend = "s3"
    config = {
      region = "ap-northeast-2"
      bucket = "aws10-terraform-state"
      key = "infra/vpc/terraform.tfstate"
    }
}