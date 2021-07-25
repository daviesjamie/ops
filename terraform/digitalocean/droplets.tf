data "digitalocean_ssh_key" "ssh_key" {
  name = var.do_ssh_key_name
}

resource "digitalocean_droplet" "cumin" {
  image    = "ubuntu-20-04-x64"
  name     = "cumin"
  region   = "lon1"
  size     = "s-1vcpu-1gb"
  ssh_keys = [data.digitalocean_ssh_key.ssh_key.fingerprint]
}

resource "digitalocean_droplet" "nutmeg" {
  image    = "ubuntu-20-04-x64"
  name     = "nutmeg"
  region   = "lon1"
  size     = "s-1vcpu-1gb"
  ssh_keys = [data.digitalocean_ssh_key.ssh_key.fingerprint]
}

output "cumin_ipv4_address" {
  description = "The IPv4 address of the cumin droplet"
  value = digitalocean_droplet.cumin.ipv4_address
}

output "nutmeg_ipv4_address" {
  description = "The IPv4 address of the nutmeg droplet"
  value = digitalocean_droplet.nutmeg.ipv4_address
}
