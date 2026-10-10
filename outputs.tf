output "supplemental_signals_id" {
  description = "Map of id values across all supplemental_signals, keyed the same as var.supplemental_signals except keys with no id are omitted"
  value       = { for k, v in auth0_supplemental_signals.supplemental_signals : k => v.id if v.id != null && length(v.id) > 0 }
}
output "supplemental_signals_akamai_enabled" {
  description = "Map of akamai_enabled values across all supplemental_signals, keyed the same as var.supplemental_signals except keys with no akamai_enabled are omitted"
  value       = { for k, v in auth0_supplemental_signals.supplemental_signals : k => v.akamai_enabled if v.akamai_enabled != null }
}

