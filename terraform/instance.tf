provider "aws" {
   profile = "default"
}

resource "aws_instance" "terraform_instance" {
  ami           = "ami-082a93958127102e9" //방금 검색했던 amiID를 복사해 붙여넣기
  instance_type = "t2.micro"
  subnet_id = ""
   tags = {
    Name = "illm-gogym-terraform_instance"
  }
}

resource "aws_vpc" "terraform_vpc" {
  cidr_block  = "172.30.0.0/16"
  tags {
    Name = "illm-gogym-terraform-vpc"
  }
}