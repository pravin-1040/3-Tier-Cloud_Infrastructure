provider "aws" {
  region  = var.region        # region from variables.tf
  profile = "default"         # AWS CLI profile
}
