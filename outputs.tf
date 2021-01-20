output "region" {
  value       = var.region
  description = "GCloud Region"
}

output "project_id" {
  value       = var.project_id
  description = "GCloud Project ID"
}

output "kubernetes_cluster_name" {
  value       = google_container_cluster.primary.name
  description = "GKE Cluster Name"
}

output "kubernetes_cluster_host" {
  value       = google_container_cluster.primary.endpoint
  description = "GKE Cluster Host"
}

output "latest_master_version" {
  value = data.google_container_engine_versions.default_region.latest_master_version
  description = "Latest master version from google_container_engine_versions datasource"
}

output "kubernetes_cluster_version_master" {
  value = google_container_cluster.primary.master_version
  description = "GKE Cluster Master Version"
}

output "kubernetes_cluster_version_node" {
  value = google_container_cluster.primary.node_version
  description = "GKE Cluster Node Version"
}