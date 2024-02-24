module "lxc" {
source = "github.com/bistaalish/terraform_lxc_proxmox"
# Provider
pm_url = var.pm_url
pm_secret = var.pm_secret
pm_token_id = var.pm_token_id
# General
general = var.general

# Template
ostemplate = var.ostemplate
# Network
network = var.network
ssh_public_key = var.ssh_public_key
password = var.password

}

resource "null_resource" "add_dns" {
  triggers = {
    on_apply = "${timestamp()}"
  }
  # Use local-exec provisioner to run the script
  provisioner "local-exec" {
    when = create
    command = "bash ./add.sh ${replace(module.lxc.IPv4,"/24","")} ${module.lxc.hostname}.home.lab"
  }
}

resource "null_resource" "remove_dns" {
  
  # Use local-exec provisioner to run the script
  provisioner "local-exec" {
    when = destroy
    command = "bash ./reset.sh "
  }
}

