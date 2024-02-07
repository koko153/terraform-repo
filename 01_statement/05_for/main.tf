provider "local" {
}

variable "names" {
    description = "A list of names"
# type        = list(string)
# default     = ["neo", "trinity", "morpheus"]
    type        = map(string)
    default = {
        neo = "hero"
        trinity = "love interest"
        morpheus = "mentor"
    }
}

output "upper_names" {
    value = { for name, role in var.names : upper(name) => upper(role) }
}