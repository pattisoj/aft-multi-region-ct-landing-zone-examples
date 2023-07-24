## Auto generated providers.tf ##
## Updated on: TIMESTAMP ##



provider "aws" {
  region = "CT_MGMT_REGION"
  assume_role {
    role_arn    = "VENDED_EXEC_ROLE_ARN"
  }
  default_tags {
    tags = local.tags
  }
}


provider "aws" {
  region = "us-east-2"
  alias  = "us-east-2"

  assume_role {
    role_arn    = "VENDED_EXEC_ROLE_ARN"
  }
  default_tags {
    tags = {
      managed_by = "AFT"
    }
  }
}

provider "aws" {
  region = "us-west-1"
  alias  = "us-west-1"

  assume_role {
    role_arn    = "VENDED_EXEC_ROLE_ARN"
  }
  default_tags {
    tags = {
      managed_by = "AFT"
    }
  }
}

provider "aws" {
  region = "us-west-2"
  alias  = "us-west-2"

  assume_role {
    role_arn    = "VENDED_EXEC_ROLE_ARN"
  }
  default_tags {
    tags = {
      managed_by = "AFT"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
  alias  = "eu-west-1"

  assume_role {
    role_arn    = "VENDED_EXEC_ROLE_ARN"
  }
  default_tags {
    tags = {
      managed_by = "AFT"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
  alias  = "ap-south-1"

  assume_role {
    role_arn    = "VENDED_EXEC_ROLE_ARN"
  }
  default_tags {
    tags = {
      managed_by = "AFT"
    }
  }
}
