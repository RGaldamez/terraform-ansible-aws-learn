
#internet vpc
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  instance_tenancy = "default"
  enable_dns_support = "true"
  enable_dns_hostnames= "true"
  enable_classiclink = "false"
  tags = {
      Name = "main"
  }
}
#public subnets
resource "aws_subnet" "main_public_1" {
    vpc_id= "${aws_vpc.main.id}"
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = "true"
    availability_zone  = "us-east-1a"
    tags ={
        Name="main-public-1"
    }
}

resource "aws_subnet" "main_public_2" {
    vpc_id= "${aws_vpc.main.id}"
    cidr_block = "10.0.2.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = "us-east-1b"
    tags = {
        Name = "main-public-2"
    }
}

resource "aws_subnet" "main_public_3" {
    vpc_id = "${aws_vpc.main.id}"
    cidr_block="10.0.3.0/24"
    map_public_ip_on_launch="true"
    availability_zone = "us-east-1c"
    tags = {
        Name="main-public-3"
    }
  
}

#private subnet

resource "aws_subnet" "main_private_1" {
    vpc_id = "${aws_vpc.main.id}"
    cidr_block = "10.0.4.0/24"
    map_public_ip_on_launch = "false"
    availability_zone = "us-east-1a"
    tags={
        Name="main-private-1"
    }
}

resource "aws_subnet" "main_private_2" {
    vpc_id ="${aws_vpc.main.id}"
    cidr_block = "10.0.5.0/24"
    map_public_ip_on_launch = "false"
    availability_zone = "us-east-1b"
    tags = {
        Name = "main-private-2"
    }
  
}
resource "aws_subnet" "main_private_3" {
    vpc_id = "${aws_vpc.main.id}"
    cidr_block = "10.0.6.0/24"
    map_public_ip_on_launch = "false"
    availability_zone= "us-east-1c"
    tags={
        Name="main-private-3"
    }
}

#internet gateway
resource "aws_internet_gateway" "main_gw" {
    vpc_id = "${aws_vpc.main.id}"
    tags = {
        Name = "main"
    }
  
}
