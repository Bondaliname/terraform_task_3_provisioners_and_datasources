resource "null_resource" "provision_vm" {
  triggers = {
    vm_public_ip = data.azurerm_public_ip.main.ip_address
  }

  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = var.ssh_user
      password = var.ssh_password
      host     = data.azurerm_public_ip.main.ip_address
    }

    inline = [
      "sudo apt-get update -y",
      "sudo apt-get install -y nginx",
      "sudo systemctl enable --now nginx",
      "cat ${path.module}/index.html"
    ]
  }
}