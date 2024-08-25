vpc_configs = {
  vpc1 = {
    cidr_block           = "10.0.0.0/16"
    enable_dns_hostnames = true
    enable_dns_support   = true

    tags = {
      Name = "example-vpc1"
      Env  = "dev"
    }
  }
  vpc2 = {
    cidr_block           = "10.1.0.0/16"
    enable_dns_hostnames = false
    enable_dns_support   = true

    tags = {
      Name = "example-vpc2"
      Env  = "prod"
    }
  }
}

