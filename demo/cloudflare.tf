resource "cloudflare_record" "cloud_record"{
    zone_id = var.cloudflare_zone_id
    name  = var.cloudflare_domain_name
    value = var.cloudflare_dns_ip
    type = "A"
    proxied = true
}
