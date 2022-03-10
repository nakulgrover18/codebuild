
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.4.0"
    }
  }
}

provider "aws" {
  assume_role {
    role_arn = "arn:aws:iam::371736344187:role/terraform-admin"
  }  
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
