vpc_configs = {
    vpc1 = {
        cidr_block = "10.10.0.24"
        enable_dns_hostnames = true
        enable_dns_support = true

        tags = {
            Name = "vpc-1"
        }
    }
}
