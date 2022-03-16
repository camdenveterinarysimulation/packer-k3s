source "googlecompute" "k3s" {
  project_id          = var.project_id
  source_image_family = var.source_image
  ssh_username        = var.ssh_username
  zone                = var.region
  image_name          = var.image_name
  omit_external_ip    = false
  use_internal_ip     = false
}

build {
  sources = ["sources.googlecompute.k3s"]

  provisioner "ansible" {
    use_proxy           = false
    keep_inventory_file = true
    playbook_file       = "../ansible/playbook.yml"
    ansible_ssh_extra_args = [
      "-o",
      "IdentitiesOnly=yes"
    ]
  }
}