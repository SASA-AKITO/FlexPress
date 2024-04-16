# FlexPress
[![License](https://img.shields.io/badge/License-CC--BY--1.0-green.svg)](https://github.com/SASA-AKITO/FlexPress\_flows/blob/main/LICENSE)
各種圧縮ツールを統一的なインターフェースで使用可能にします．

## Description
ファイルの圧縮形式は数多くの種類が存在しています．これらは，それぞれインターフェースが異なり，使いこなすには複雑です．このツールはそれらの圧縮形式を統一的なインターフェースで操作可能にします．

## Usage
```sh
FlexPress [OPTIONS] <ARGUMENTS...>
OPTIONS
  -m, --mode <MODE>     操作モードを extract, archive, auto から選択する．デフォルトはauto.
  -d, --dest <DEST>     出力ディレクトリを指定する．デフォルトはcurrent directory.
  -o, --output <FILE>   アーカイブの出力ファイル．デフォルトはFlexPress.zip.
  -h, --help            helpメッセージを表示する．
ARGUMENTS
  extract mode: アーカイブファイルを展開する．
  archive mode: ファイルをアーカイブする.
  auto mode:    引数にアーカイブファイルが指定されている場合, 展開する.
                Otherwise, ファイルをアーカイブする．
```