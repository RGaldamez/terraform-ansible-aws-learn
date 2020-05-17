variable "REGION" {
    default = "us-east-1"
}

variable "INSTANCE_TYPE" {
  default = "t2.micro"
}


variable "AMIS" {
  type = map
  default = {
      us-east-1 = "ami-085925f297f89fce1"
  }
}
