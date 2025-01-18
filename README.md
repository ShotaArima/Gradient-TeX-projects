# ディレクトリイメージ
```
.
├── Dockerfile
├── compose.yaml
├── contents/
│   ├──appendix.tex : 付録
│   ├──background.tex : 背景
│   ├──conclusion.tex : 結論
│   ├──discussion.tex : 議論(考察)
│   ├──experiment.tex : 実験
│   ├──introduction.tex : はじめに
│   ├──method.tex : 手法
│   ├──result.tex : 結果
│   ├──threats_to_validity.tex : 妥当性の脅威
│   └── 
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
```

# 環境について
- Ubuntu 22.04 
- [TeX Live](https://texwiki.texjp.org/?Linux%2FLinux%20Mint#texlive)を参考にLinuxコンテナ上でTeXを使用する環境を用意
- `.devcontainer`を使用し、cmd+sで自動的にpdfを生成する