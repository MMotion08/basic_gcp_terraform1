terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.26.0"
    }
  }
}

provider "google" {
  # Configuration options
project = "gcp-class5-5-420319"
region = "us-central1"
zone = "us-central1-a"
credentials = "gcp-class5-5-420319-bf26a23950b3.json"
}
resource "google_storage_bucket" "better_pay_un_ten_shun" {
  name          = "pay_un_ten_shun"
  location      = "us"
  force_destroy = true

  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
  cors {
    origin          = ["http://image-store.com"]
    method          = ["GET", "HEAD", "PUT", "POST", "DELETE"]
    response_header = ["*"]
    max_age_seconds = 3600
  }

}
