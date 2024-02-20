resource "aws_instance" "bastion" {
    ami = "ami-09eb4311cbaecf89d"
    instance_type = "t2.micro"
    key_name = "aws10-key"

    subnet_id = data.terraform_remote_state.vpc.outputs.public-subnet-2a-id

    tags = {
      Name = "aws10-bastion"
    }
}