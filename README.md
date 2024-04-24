# FlexPress
[![License](https://img.shields.io/badge/License-CC--BY--1.0-green.svg)](https://github.com/SASA-AKITO/FlexPress\_flows/blob/main/LICENSE)
[![Coverage Status](https://coveralls.io/repos/github/SASA-AKITO/FlexPress/badge.svg?branch=main)](https://coveralls.io/github/SASA-AKITO/FlexPress?branch=main)
[![Rust Report Card](https://rust-reportcard.xuri.me/badge/github.com/sasa-akito/flexpress)](https://rust-reportcard.xuri.me/report/github.com/sasa-akito/flexpress)
各種圧縮ツールを統一的なインターフェースで使用可能にします．

## Description
ファイルの圧縮形式は数多くの種類が存在しています．これらは，それぞれインターフェースが異なり，使いこなすには複雑です．このツールはそれらの圧縮形式を統一的なインターフェースで操作可能にします．

## Usage
```sh
FlexPress [OPTIONS] <ARGUMENTS...>
OPTIONS
  -m, --mode <MODE>     操作モードを extract, archive, auto から選択する．デフォルトは auto.
  -d, --dest <DEST>     出力先のディレクトリを指定する．デフォルトは current directory.
  -o, --output <FILE>   アーカイブの出力ファイル．デフォルトは FlexPress.zip.
  -h, --help            helpメッセージを表示する．
ARGUMENTS
  extract mode: アーカイブファイルを展開する．
  archive mode: ファイルをアーカイブする.
  auto mode:    引数にアーカイブファイルが指定されている場合, 展開する.
                それ以外の場合, ファイルをアーカイブする．
```