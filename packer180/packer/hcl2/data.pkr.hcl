data "amazon-ami" "sample" {
  filters = {
    name = "amzn2-ami-hvm-*-x86_64-gp2"
  }
  most_recent = true
  owners      = ["amazon"]
  profile     = "${var.profile}"
  region      = "${var.region}"
}
