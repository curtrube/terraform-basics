/*
The terraform {} block contains Terraform settings, including the required providers Terraform will use to provision your infrastructure. For each provider, the source attribute defines an optional hostname, a namespace, and the provider type. Terraform installs providers from the Terraform Registry by default. In this example configuration, the aws provider's source is defined as hashicorp/aws, which is shorthand for registry.terraform.io/hashicorp/aws.
*/
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.2.0"
}

/*
The provider block configures the specified provider, in this case aws. A provider is a plugin that Terraform uses to create and manage your resources.

You can use multiple provider blocks in your Terraform configuration to manage resources from different providers. You can even use different providers together. For example, you could pass the IP address of your AWS EC2 instance to a monitoring resource from DataDog.
*/
provider "aws" {
  region = "us-west-2"
}

/*
Use resource blocks to define components of your infrastructure. A resource might be a physical or virtual component such as an EC2 instance, or it can be a logical resource such as a Heroku application.

Resource blocks have two strings before the block: the resource type and the resource name. In this example, the resource type is aws_instance and the name is app_server. The prefix of the type maps to the name of the provider. In the example configuration, Terraform manages the aws_instance resource with the aws provider. Together, the resource type and resource name form a unique ID for the resource. For example, the ID for your EC2 instance is aws_instance.app_server.
*/
resource "aws_instance" "app_server" {
  ami           = "ami-0cf2b4e024cdb6960"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
