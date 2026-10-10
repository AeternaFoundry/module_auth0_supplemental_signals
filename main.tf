resource "auth0_supplemental_signals" "supplemental_signals" {
  for_each = var.supplemental_signals

  akamai_enabled = each.value.akamai_enabled
}

