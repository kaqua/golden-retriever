build {
  sources = ["source.amazon-ebs.sample"]

  provisioner "chef-solo" {
    chef_environment  = "common"
    cookbook_paths    = ["../../chef/cookbooks"]
    environments_path = "../../chef/environments"
    roles_path        = "../../chef/roles"
    run_list          = ["role[${var.environment}]"]
  }

  provisioner "shell" {
    inline = ["echo sample > /tmp/packer_build.log"]
  }

  post-processor "amazon-ami-management" {
    identifier    = "${var.service_name}-${var.environment}"
    keep_releases = "5"
    regions       = ["${var.region}"]
  }
}
