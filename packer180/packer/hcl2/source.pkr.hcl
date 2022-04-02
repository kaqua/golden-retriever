source "amazon-ebs" "sample" {
  ami_name      = "${var.service_name}-${var.environment}-${formatdate("YYYYMMDD'T'HHmmZ", timestamp())}"
  instance_type = "${var.instance_type}"
  profile       = "${var.profile}"
  region        = "${var.region}"
  run_tags = {
    Name = "Packer Build of ${var.service_name}-${var.environment}"
  }
  security_group_ids = "${var.security_group_ids}"
  source_ami         = "${data.amazon-ami.sample.id}"
  ssh_interface      = "${var.ssh_interface}"
  ssh_timeout        = "5m"
  ssh_username       = "ec2-user"
  subnet_id          = "${var.subnet_id}"
  tags = {
    Amazon_AMI_Management_Identifier = "${var.service_name}-${var.environment}"
    Environment                      = "${var.environment}"
    Name                             = "${var.service_name}-${var.environment}"
  }
  vpc_id = "${var.vpc_id}"
}
