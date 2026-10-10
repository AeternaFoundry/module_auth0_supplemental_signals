variable "supplemental_signals" {
  description = <<EOT
Map of supplemental_signals, attributes below
Required:
    - akamai_enabled
EOT

  type = map(object({
    akamai_enabled = bool
  }))
}

