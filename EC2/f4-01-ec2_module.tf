module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.6.0"

  ami               = data.aws_ami.amazon2.id
  instance_type     = var.instance_type
  availability_zone = var.availability_zone


}