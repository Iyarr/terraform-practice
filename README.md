# terraform-practice

terraform 練習用としてチュートリアルをやってみるためのレポジトリ
それぞれのコードが何を意味しているのかもコメントでなるべく書き込みたい

## 追加でやりたいこと

- Ansible なんかも一緒に使ってみたい
- Github Actions でコードを動かしてみたい

## 使用したコマンド

- 初期化

  - terraform init

- コンテナ作成

  - terraform apply

- コンテナ削除

  - terraform destroy

## .env ファイルの活用

IAM のアクセスキーを.env ファイルに保存し、それをコンテナに読み込ませることにより使用する
その際の docker のコンテナ起動コマンド

> docker build -t example:latest .
> docker run --env-file .env -it example:latest
