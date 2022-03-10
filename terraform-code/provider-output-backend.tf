
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.4.0"
    }
  }
}

provider "aws" {
    access_key = "AKIAVNDJWOZ57GAHAA34"
    secret_key = "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"
    region = "us-east-1"
}

/* THIS SYNTAX IS NOT WORKING */
/*
terraform {
  backend "s3" {
    bucket = "${var.prefix}.${var.region}.terraform-state-nagra"
    key    = "${var.prefix}/terraform.tfstate"
    region = "${var.region}"
  }
}
*/

#this will be done by the script in the buldspec.yml
#terraform {
#  backend "s3" {
#    bucket = "$datapart.$region.terraform-state-nagra"
#    key    = "$applicationname/terraform.tfstate"
#    region = "$region"
#  }
#}
