locals {
  tier_map = {
    "GeneralPurpose"  = "GP"
    "Burstable"       = "B"
    "MemoryOptimized" = "MO"
  }

  basic_tags = {}

  tags = merge(
    local.basic_tags,
    var.extra_tags,
  )
}
