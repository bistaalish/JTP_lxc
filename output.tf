# Define an output variable to capture the subnet of your network
output "IPv4" {
  value = replace(var.network[2],"/24","")
}

output "record" {
    value = "${var.general.hostname}.home.lab"
}