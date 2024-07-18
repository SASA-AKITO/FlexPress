# FlexPress

[![License](https://img.shields.io/badge/License-CC--BY--1.0-green.svg)](https://github.com/SASA-AKITO/FlexPress\_flows/blob/main/LICENSE)
[![Coverage Status](https://coveralls.io/repos/github/SASA-AKITO/FlexPress/badge.svg?branch=main)](https://coveralls.io/github/SASA-AKITO/FlexPress?branch=main)
[![Rust Report Card](https://rust-reportcard.xuri.me/badge/github.com/sasa-akito/flexpress)](https://rust-reportcard.xuri.me/report/github.com/sasa-akito/flexpress)
[![DOI](https://zenodo.org/badge/786669064.svg)](https://zenodo.org/doi/10.5281/zenodo.11178525)

ファイルやディレクトリを複数のフォーマットで展開/圧縮するツール

## Description
多くのアーカイブフォーマットとそのツールがあるが、それぞれのツールを使う際にインターフェイスが微妙に異なることが問題になります。 `FlexPress`はアーカイブファイルを同じインターフェイスとして扱います。 

## Usage

```sh
ファイルやディレクトリを複数のフォーマットで抽出/アーカイブするツール

Usage: FlexPress [OPTIONS] [ARGUMENTS]...

Arguments:
  [ARGUMENTS]...  処理するファイルまたはディレクトリのリスト

Options:
  -m, --mode <MODE>     操作モードを extract, archive, auto から選択する．デフォルトは auto.
  -d, --dest <DEST>     出力先のディレクトリを指定する．デフォルトは current directory.
  -o, --output <FILE>   アーカイブの出力ファイル．デフォルトは FlexPress.zip.
  -h, --help            helpメッセージを表示する．
```

Supported archive formats:

- Tar
- Tar+Gzip
- Tar+Bzip2
- Tar+Xz
- Tar+Zstd
- Zip
- 7z
- Lha, Lzh (extraction only)
- Rar (extraction only)

## About

### Authors

* Sasahara Akito ([SASA-AKITO](https://github.com/SASA-AKITO/))