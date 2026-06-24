terraform {
  backend "s3" {
    bucket       = "emma-tfstate-941377151096"
    key          = "full-ha-infra/dev/terraform.tfstate"
    region       = "eu-west-1"
    use_lockfile = true
    encrypt      = true
  }
}