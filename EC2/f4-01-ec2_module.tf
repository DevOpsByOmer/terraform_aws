module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.6.0"

  ami               = data.aws_ami.ubuntu
  instance_type     = t2.micro
  availability_zone = "us-east-1a"


}