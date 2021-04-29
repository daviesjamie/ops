data "digitalocean_ssh_key" "ssh_key" {
  name = var.do_ssh_key_name
}

resource "digitalocean_droplet" "web" {
  image    = "ubuntu-20-04-x64"
  name     = "paprika"
  region   = "lon1"
  size     = "s-1vcpu-1gb"
  ssh_keys = [data.digitalocean_ssh_key.ssh_key.fingerprint]
}
