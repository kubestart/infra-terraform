# terraform {
#   backend "s3" {
#     bucket = "my-tf-remote-state"
#     region = "eu-central-1"
#     key = "webtier/terraform.tfstate"
#     encrypt = true
#     dynamodb_table = "my-tf-remote-state-lock"
#   }
# }
