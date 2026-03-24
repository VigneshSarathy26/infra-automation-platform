resource "google_container_cluster" "primary" {
  name               = var.cluster_name
  location           = var.location
  initial_node_count = 1
}
