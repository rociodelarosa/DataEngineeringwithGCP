provider "google" {
  project     = "rocio-packt-gcp-data-eng"
  region      = "us-east1"
}

resource "google_composer_environment" "example" {
  name = "packt-composer-dev"
  region = "us-east1"

  config {
    software_config {
      image_version = "composer-1.19.15-airflow-1.10.15"
    }
  }
}