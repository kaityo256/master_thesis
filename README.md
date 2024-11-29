# 修士論文LaTeXテンプレート

## 概要

慶應義塾大学大学院理工学研究科基礎理工学専攻物理情報専修の修士論文のための**非公式**テンプレートです。提出にあたっては実際の指示に従ってください。

## 内容

* `thesis.tex` 修士論文本体のLaTeXファイル。
* `abstract.docx` 審査用要旨のWordテンプレートファイル。
* `cover.pptx` 製本を依頼する際の表紙データ。
    * 印刷して「上製本で」と指定して生協に出すときれいに製本をしてくれる。製本しない場合は不要。

## 使い方

HTTPSでクローンして、リポジトリを初期化し、新たにリポジトリを作る。

```sh
cd
cd github
git clone https://github.com/kaityo256/master_thesis.git
cd master_thesis
rm -rf .git
git init
git add .
git commit -m ":tada: initial commit"
```

さらにGitHub等でプライベートリポジトリとして管理することを強く推奨する。

## コンパイル方法

TeXLiveをインストールし、LaTeXでコンパイルすればよいが、latexmkによるコンパイルを推奨する。`.latexmkrc`は、例えば以下のようにすれば良い。

```sh
#!/usr/bin/env perl

$latex = 'platex -synctex=1 %O %S';
$bibtex = 'pbibtex %O %B';
$makeindex = 'memindex %O -o %D %S';
$pdf_mode = 3;
$dvipdf = 'dvipdfmx -V 7 %O -o %D %S';
```

正しくインストールされていれば、

```sh
latexmk
```

を実行することで`thesis.pdf`が作成される。

## 提出要旨の作成

pdftkがインストールされていれば、`thesis.pdf`から提出用の要旨(表紙＋和文要旨＋英文要旨を一つのPDFにしたもの)を作成できる。

```sh
pdftk thesis.pdf cat 1-3 output submit_abstract.pdf
```

単に

```sh
make abst
```

とすれば、`thesis.pdf`が無ければ作成され、そこから`submit_abstract.pdf`が作成される。

## ライセンス

CC-BY
