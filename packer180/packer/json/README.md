# Description
サンプル用のテンプレート(json)が置かれているディレクトリ  
変数ファイルを環境ごとに用意

```
$ tree
.
├── README.md
├── sample.json
└── variables
    ├── production.json
    └── staging.json
```

環境ごとのファイルの中身は以下のようになっているため、修正してから使うこと
```
$ cat variables/production.json 
{
  "environment": "production",
  "security_group_ids": "sg-xxxxxxxxxxxxx,sg-xxxxxxxxxxxxx",
  "subnet_id": "subnet-xxxxxxxxxxxxx",
  "vpc_id": "vpc-xxxxxxxxxxxxx"
}
```