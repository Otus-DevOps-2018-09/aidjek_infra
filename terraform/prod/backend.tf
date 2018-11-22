terraform {
  backend "gcs" {
    bucket  = "aidjek-prod-bucket"
    prefix  = "prod-state"
  }
}
