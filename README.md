# ディレクトリイメージ
```
.
├── Dockerfile
├── compose.yaml
├── tex/
│   └── # TeXファイルを配置するディレクトリ
├──  output/
│     └── # 生成されたPDFなどの出力ファイル
└──references.bib
      └── # 参考文献のBibTexファイル(必要に応じて)
```

# 実行
## 環境起動
```bash
# コンテナを起動してシェルに入る
docker compose run --rm texlive bash

## PDFの生成
- 開発コンテナに入る
- `thesis.tex`で`⌘+S`し、保存する