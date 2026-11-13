output "nodes_lookup_id" {
  description = "Map of id values across all nodes_lookup, keyed the same as var.nodes_lookup"
  value       = { for k, v in data.consul_nodes.nodes_lookup : k => v.id }
}
output "nodes_lookup_datacenter" {
  description = "Map of datacenter values across all nodes_lookup, keyed the same as var.nodes_lookup"
  value       = { for k, v in data.consul_nodes.nodes_lookup : k => v.datacenter }
}
output "nodes_lookup_node_ids" {
  description = "Map of node_ids values across all nodes_lookup, keyed the same as var.nodes_lookup"
  value       = { for k, v in data.consul_nodes.nodes_lookup : k => v.node_ids }
}
output "nodes_lookup_node_names" {
  description = "Map of node_names values across all nodes_lookup, keyed the same as var.nodes_lookup"
  value       = { for k, v in data.consul_nodes.nodes_lookup : k => v.node_names }
}
output "nodes_lookup_nodes" {
  description = "Map of nodes values across all nodes_lookup, keyed the same as var.nodes_lookup"
  value       = { for k, v in data.consul_nodes.nodes_lookup : k => v.nodes }
}
output "nodes_lookup_query_options" {
  description = "Map of query_options values across all nodes_lookup, keyed the same as var.nodes_lookup"
  value       = { for k, v in data.consul_nodes.nodes_lookup : k => v.query_options }
  sensitive   = true
}

