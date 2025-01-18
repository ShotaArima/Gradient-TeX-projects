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

# 特定のコマンドのみを実行
docker compose run -rm texlive platex tex/document.tex
```

## コンパイル
```bash
cd tex
platex document.tex
dvipdfmx document.dvi
```

### latexmkを使用する場合の設定
```perl
#!/usr/bin/env perl
$latex            = 'platex -synctex=1 -halt-on-error';
$latex_silent     = 'platex -synctex=1 -halt-on-error -interaction=batchmode';
$bibtex           = 'pbibtex';
$dvipdf           = 'dvipdfmx %O -o %D %S';
$makeindex        = 'mendex %O -o %D %S';
$max_repeat       = 5;
$pdf_mode         = 3; # generates pdf via dvipdfmx
```
- カレントディレクトリの`tex/`フォルダがコンテナの`/work/tex`にマウントされ、TeXファイルの編集が可能
- 生成されたPDFは`output/`ディレクトリに保存可能
- 日本語環境が適切に設定され、すぐに日本語文書の作成が可能
- `latexmk`を使用した自動ビルドが可能

