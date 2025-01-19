# ディレクトリイメージ
```
.
├── Dockerfile
├── compose.yaml
├── contents/
│   ├──01_introduction.tex : はじめに
│   ├──02_previous.tex : 背景
│   ├──03_propose.tex : 手法
│   ├──04_experiment.tex : 実験
│   ├──05_conclusion.tex : 結論
│   ├──appendix.tex : 付録
└──latexmkrc : LaTeX環境やコンパイルなどの設定ファイル
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

# 書き方
## 参考文献
- 参照先:[proceedings.bib](./proceedings.bib)
```bib
@article{example2023,
  author    = {John Doe and Jane Smith},
  title     = {An Example Article},
  journal   = {Journal of Examples},
  year      = {2023},
  volume    = {42},
  number    = {1},
  pages     = {1--10},
  month     = jan,
  note      = {An optional note},
  doi       = {10.1234/example.2023.42.1},
}
```