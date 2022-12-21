provider "aws" {
   profile = "default"
}

resource "aws_instance" "terraform_test" {
  ami           = "ami-082a93958127102e9" //방금 검색했던 amiID를 복사해 붙여넣기
  instance_type = "t2.micro"
  subnet_id = "subnet-0b218e3e01d8df2a6"
   tags = {
    Name = "illm-gogym-terraform_instance_test"
  }
}