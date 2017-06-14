provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-b374d5a5"
  instance_type = "t2.micro"
  subnet_id     = "subnet-c42805b2"
}

resource "aws_eip" "ip" {
  instance = "${aws_instance.example.id}"
  vpc      = true
}
