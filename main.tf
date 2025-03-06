terraform {
  cloud {
    organization = "AWS_Tulip"
    workspaces {
      name = "tulip-base"
    }
  }
}