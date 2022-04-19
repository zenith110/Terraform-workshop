variable "cloudflare_zone_id" {
    description = "cloudflare zone id"
}
variable "cloudflare_domain_name" {
    description = "Which domain will the sub-domains live under"
}
variable "cloudflare_dns_name" {
    description = "Sub domain name"
    default = "test"
}
variable "cloudflare_dns_ip" {
    description = "Sub domain ip address"
    default = "127.0.0.1"
}
