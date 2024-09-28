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
