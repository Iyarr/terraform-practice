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

コンテナに環境変数を.env ファイルにより取得する
dockerfile からコンテナを起動する手順は次の通り

- docker build -t example:latest .
- docker run --env-file .env -it example:latest

コンテナを起動する際に.env ファイルを読み込む
読み込んだ環境変数は start.sh スクリプトファイルで参照されて使用する
