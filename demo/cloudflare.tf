resource "cloudflare_record" "cloud_record"{
    zone_id = var.cloudflare_zone_id
    name  = "demo"
    value = "127.0.0.1"
    type = "A"
    proxied = true
}
