locals {
  tier_map = {
    "GeneralPurpose"  = "GP"
    "Burstable"       = "B"
    "MemoryOptimized" = "MO"
  }

  default_tags = {
    environment  = var.environment
    project_name = var.project_name
  }

}
