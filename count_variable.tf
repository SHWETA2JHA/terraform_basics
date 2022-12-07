provider "aws" {
   region = "us-east-1"
   access_key = "########"
   secret_key = "#@#$%#@^&*#"
}

resource "aws_instance" "instance1" {
  ami = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"
  count = 5
}
variable "elb_names"{
  type=list
  default=["dev_loadbalancer","stage-lb","prod-lb"]
}

resource "aws_iam_user" "lb"{
  name=var.elb_names[count.index]
  count=3
  path="/system/"
}
