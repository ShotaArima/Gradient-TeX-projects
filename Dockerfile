FROM ubuntu:22.04

# タイムゾーンの設定で対話モードを回避
ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# 必要なパッケージのインストール
RUN apt-get update && apt-get install -y \
    texlive-full \
    texlive-lang-japanese \
    texlive-lang-cjk \
    xdvik-ja \
    dvipsk-ja \
    latexmk \
    gzip \
    zip \
    unzip \
    make \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# 日本語フォントのインストール
RUN apt-get update && apt-get install -y \
    fonts-ipafont \
    fonts-ipaexfont \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# 作業ディレクトリの作成
RUN mkdir -p /work/tex /work/output
WORKDIR /work

# 環境変数の設定
ENV LANG=ja_JP.UTF-8
