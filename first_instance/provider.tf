variable path {
  type        = string
  default     = "D:\\Desarrollo\\Terraform-Samples\\Credentials"
  description = "description"
}


provider "google" {
  project = "dazzling-tiger-337902"
  region = "us-central1-c"
  credentials = "${file("${var.path}/secrets.json")}"
}
