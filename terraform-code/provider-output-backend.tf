
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.4.0"
    }
  }
}

provider "aws" {
#  shared_credentials_file  = "${var.cred-file}" # we don't use it in CodeBuild
   role_arn    = "${var.role_arn}"
#   role_arn = "arn:aws:iam::371736344187:role/terraform-admin"
  region     = "${var.region}"
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
