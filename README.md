# 環境構築

## 1. compose.yml

```bash
$ cp compose.yml.template compose.yml
```

あとは環境にあわせて編集する。

## src/.env

```conf
DATABASE_URL="..."
```

必要なら.env.test,.env.development,.env.production 等を配置する。

## 課題

- 初期セットアップ時に prisma migrate したい。
- .env.\*系にあわせたスクリプトをかく。
