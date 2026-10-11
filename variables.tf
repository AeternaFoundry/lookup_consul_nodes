variable "nodes_lookup" {
  description = <<EOT
Map of nodes_lookup, attributes below
Optional:
    - query_options (block):
        - allow_stale (optional)
        - datacenter (optional)
        - near (optional)
        - node_meta (optional)
        - partition (optional)
        - require_consistent (optional)
        - token (optional)
        - wait_index (optional)
        - wait_time (optional)
EOT

  type = map(object({
    query_options = optional(list(object({
      allow_stale        = optional(bool)
      datacenter         = optional(string)
      near               = optional(string)
      node_meta          = optional(map(string))
      partition          = optional(string)
      require_consistent = optional(bool)
      token              = optional(string)
      wait_index         = optional(number)
      wait_time          = optional(string)
    })))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

