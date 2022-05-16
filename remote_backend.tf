terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "aeckrava"
    workspaces {
      name = "hashicat-azure"
    }
  }
}
