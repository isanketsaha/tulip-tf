terraform {
  cloud {
    organization = var.organization
    workspaces {
      name = "tulip-base"
    }
  }
}