terraform {
  backend "gcs" {
    bucket = "rocio-packt-gcp-data-eng-data-bucket"  # without gs://
    prefix = "terraform-backend-basic"
  }
}
