terraform {
  backend "gcs" {
    bucket = "aidjek-stage-bucket"
    prefix = "stage-state"
  }
}
