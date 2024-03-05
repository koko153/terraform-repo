resource "aws_instance" "target" {
    ami = "ami-09eb4311cbaecf89d"
    instance_type = "t2.micro"
    key_name = "aws10-key"
    // 퍼블릭 IP 활성화
    associate_public_ip_address = true
    security_groups = [ data.terraform_remote_state.security_group.outputs.ssh_id,
                        data.terraform_remote_state.security_group.outputs.http_id, 
                        data.terraform_remote_state.security_group.outputs.https_id]
    # vpc_security_group_ids = [data.terraform_remote_state.security_group.outputs.ssh_id]   

    subnet_id = data.terraform_remote_state.vpc.outputs.public-subnet-2a-id

    # user_data = "${base64encode(data.template_file.user_data.rendered)}" 
   
    tags = {
      Name = "aws10-target"
    }
}

# data "template_file" "user_data" {
#   template = file("${path.module}/template/userdata.sh")
# }