variable "cloudflare_zone_id" {
    description = "cloudflare zone id"
}
variable "cloudflare_domain_name" {
    description = "Which domain will the sub-domains live under"
    default = "test.pubsub-api.dev"
}

variable "cloudflare_dns_ip" {
    description = "Sub domain ip address"
}
variable "cloudflare_api_key"{
    description = "api key for cloudflare"
}
variable "cloudflare_email"{
    description = "cloudflare email"
}