output "nodes_lookup_id" {
  description = "Map of id values across all nodes_lookup, keyed the same as var.nodes_lookup except keys with no id are omitted"
  value       = { for k, v in data.consul_nodes.nodes_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "nodes_lookup_datacenter" {
  description = "Map of datacenter values across all nodes_lookup, keyed the same as var.nodes_lookup except keys with no datacenter are omitted"
  value       = { for k, v in data.consul_nodes.nodes_lookup : k => v.datacenter if v.datacenter != null && length(v.datacenter) > 0 }
}
output "nodes_lookup_node_ids" {
  description = "Map of node_ids values across all nodes_lookup, keyed the same as var.nodes_lookup except keys with no node_ids are omitted"
  value       = { for k, v in data.consul_nodes.nodes_lookup : k => v.node_ids if v.node_ids != null && length(v.node_ids) > 0 }
}
output "nodes_lookup_node_names" {
  description = "Map of node_names values across all nodes_lookup, keyed the same as var.nodes_lookup except keys with no node_names are omitted"
  value       = { for k, v in data.consul_nodes.nodes_lookup : k => v.node_names if v.node_names != null && length(v.node_names) > 0 }
}
output "nodes_lookup_nodes" {
  description = "Map of nodes values across all nodes_lookup, keyed the same as var.nodes_lookup except keys with no nodes are omitted"
  value       = { for k, v in data.consul_nodes.nodes_lookup : k => v.nodes if v.nodes != null && length(v.nodes) > 0 }
}
output "nodes_lookup_query_options" {
  description = "Map of query_options values across all nodes_lookup, keyed the same as var.nodes_lookup except keys with no query_options are omitted"
  value       = { for k, v in data.consul_nodes.nodes_lookup : k => v.query_options if v.query_options != null && length(v.query_options) > 0 }
  sensitive   = true
}

