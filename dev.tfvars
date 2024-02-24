# Provider


# General
general = {
  node = "pvesony"
  hostname = "jenkins"
  start = "true"
  tags = "Terraform"
    # Disk
  disk_size = "25G" 
  disk_name = "local"
  # CPU
  cpus = "2"
  # Memory
  memory = "4096"
}

ssh_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDXA7s9ThYPDxLdB6WbT36uNLeBJX2tAZbBuPT6XpDuobtw8VWq7qo7XtPxoaDV7WJx/+iB+0L4TGSAn5PffzhL4DQXz+JV7AfJz/QDv/GWLc9RyGeSQX1mIo9IyitoYtwD9qs3is2q2QJ2Ey6PMRluC6m5DHDw1/9R0psgJ4uXR4KiOl5e9j/xYJVQAiN/hzrRq9uX7rZekhw9vacMpdf+jQsbRQvvIFylOBL7lw+b3ZMOo32WKUSWiM1BoJ3OEAUycpzeyU+5MGb0/vSD1YheYRrXLuUQqGOLgkw7ZSaLtiXuTep/CYe8TDZS40LyUwJtHr8Xw0r58cePPNdnjLk7Pi+6dEuM+X8S52RjjsnOh5ruRtnMUsn2Ox/OIZcnA7C985OacIm5Z+tEGpl0Jj2VsZ6DxPl/vUQNuoFFS+mS37It31OeIvZ9Bst86qt2xV5YcxpYXbRQ5D3MBevDSpB6Xwaq5he+u7Z/+7JIkofsZwHZ5jm3QaphCsYB3AqC5rk= user@rog"
# Template
ostemplate = "HDD:vztmpl/debian-12-standard_12.2-1_amd64.tar.zst"

network = ["eth0","vmbr0","192.168.10.30/24","192.168.10.1"]
