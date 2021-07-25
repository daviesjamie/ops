variable "do_ssh_key_name" {
  description = "Name of the SSH key to add to the droplets"
  type = string
}

variable "do_token" {
  description = "Personal access token for accessing the DigitalOcean API"
  type = string
}
