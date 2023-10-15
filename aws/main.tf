

data "external" "env_vars" {
  program = ["bash", "-c", "cat .env"]
}

provider "aws" {
  access_key = data.external.env_vars.result.AWS_ACCESS_KEY_ID  # IAMアクセスキーをここに設定
  secret_key = data.external.env_vars.result.AWS_SECRET_ACCESS_KEY  # IAMシークレットキーをここに設定
  region     = "ap-northeast-1"  # 適切なリージョンを指定
}

resource "aws_instance" "example" {
  ami           = "ami-0fd8f5842685ca887"
  instance_type = "t3.nano"

  subnet_id            = aws_subnet.example.id
  associate_public_ip_address = true
}

resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "example" {
  vpc_id     = aws_vpc.example.id
  cidr_block = "10.0.1.0/24"
}
