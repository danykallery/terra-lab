terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.20.0"
    }
  }
}

provider "google" {
  project = "brave-healer-417112"
  region = "us-central1"
  zone = "us-central1-a"
  credentials = "terra.json"
}