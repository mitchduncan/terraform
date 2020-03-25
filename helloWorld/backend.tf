terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "mitchduncanaws2020"

    workspaces {
      name = "md-ws-dev"
    }
  }

}

