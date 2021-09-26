resource "hcp_hvn" "dev_hvn" {
  hvn_id         = var.hvn_id
  cloud_provider = var.cloud_provider
  region         = var.region
}

resource "hcp_consul_cluster" "dev_hcp" {
  hvn_id          = hcp_hvn.example_hvn.hvn_id
  cluster_id      = var.cluster_id
  tier            = var.consul_tier
#   public_endpoint = true
}