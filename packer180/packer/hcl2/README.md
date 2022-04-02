# Description
サンプル用のテンプレート(hcl2)が置かれているディレクトリ  
JSON形式のテンプレートをHCL2に変換し、各ブロックごとにファイルを分けた状態

```
$ tree
.
├── README.md
├── build.pkr.hcl
├── data.pkr.hcl
├── origin
│   └── sample.pkr.hcl
├── plugins.pkr.hcl
├── source.pkr.hcl
├── variables
│   ├── production.pkr.hcl
│   └── staging.pkr.hcl
└── variables.pkr.hcl
```

- build.pkr.hcl  
builder(sources), provisioner, post-processor を定義
- data.pkr.hcl  
Packer構成内のデータソースを定義
- origin  
各ブロックに分割する前のファイルを配置
- plugins.pkr.hcl  
プラグインを定義
- source.pkr.hcl  
ビルダー構成を定義
- variables  
環境ごとの変数ファイルを配置
- variables.pkr.hcl  
変数を定義

環境ごとのファイルの中身は以下のようになっているため、修正してから使うこと
```
environment = "production"
security_group_ids = ["sg-xxxxxxxxxxxxx", "sg-xxxxxxxxxxxxx"]
subnet_id = "subnet-xxxxxxxxxxxxx"
vpc_id = "vpc-xxxxxxxxxxxxx"
```