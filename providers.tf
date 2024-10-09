provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket         = "aravindkoniki-tfstate-28092024"
    key            = "awspipelines/tfawspipelines.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraformstate-locks-tfstate-05082023"
    encrypt        = true
  }
}

provider "aws" {
  region = var.region
  alias  = "MY_DEV_ENVIRONMENT"
  assume_role {
    role_arn    = "arn:aws:iam::767847069565:role/code-pipeline-dev-account-role"
    external_id = "cross_account_codepipeline"
  }
}
