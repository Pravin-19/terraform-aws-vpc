variable "vpc_configs" {
  type = map(object({
    cidr_block = string
    enable_dns_hostnames = bool
    enable_dns_support = bool
    tags = map(string)
  }))
}
