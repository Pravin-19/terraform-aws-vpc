# Terraform AWS VPC Module

This Terraform module simplifies the creation and management of AWS Virtual Private Clouds (VPCs). It provides flexible options to configure CIDR blocks, DNS settings, and tagging, making it easier to manage your network infrastructure on AWS.

## Features

- **Multiple VPC Support**: Easily create one or more VPCs with custom configurations.
- **DNS Configuration**: Toggle DNS support and DNS hostnames on or off as needed.
- **Tagging**: Apply custom tags to VPCs for better resource management and tracking.

## Usage

Below are two examples of how to use this module: one where the configuration is provided directly within the `main.tf` file, and another using a `terraform.tfvars` file for separating configuration data.

### Example 1: VPC Configuration Without `terraform.tfvars`

This example demonstrates how to configure a VPC directly in the `main.tf` file.

```hcl
module "vpc" {
  source = "your-repo/your-module-path"

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
      enable_dns_hostnames = true
      enable_dns_support   = true

      tags = {
        Name = "example-vpc2"
        Env  = "dev"
      }
    }
 }
}
```
