terraform {
  backend "gcs" {
    bucket  = "project_code_samples"
    prefix  = "project/dev/state"
  }
}