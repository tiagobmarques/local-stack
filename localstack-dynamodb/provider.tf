provider "aws" {
  access_key                  = "mock_access_key"
  region                      = var.region
  s3_force_path_style         = true
  secret_key                  = "mock_secret_key"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    dynamodb = var.dynamodb-addr
  }
}