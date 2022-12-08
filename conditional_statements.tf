
variable "istest"{}

resource "aws_instance" "dev" {
  ami = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"
  count = var.istest == true ? 1 : 0
}

resource "aws_instance" "prod" {
  ami = "ami-026b57f3c383c2eec"
  instance_type = "t2.large"
  count = var.istest == false ? 1 : 0
}
