provider "google" {
  project     = var.project_id
  region      = "us-central1"
}

module "vpc" {
  source                                 = "./modules/"
}

module "compute" {
  source                                 = "./modules/"
}
