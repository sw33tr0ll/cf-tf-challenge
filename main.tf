provider "google" {
  project     = var.project_id
  region      = "us-central1"
  credentials = file("credentials.json")
}

module "vpc" {
  source                                 = "./modules/"
}

module "compute" {
  source                                 = "./modules/"
}
