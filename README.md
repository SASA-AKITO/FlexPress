# FlexPress
[![License](https://img.shields.io/badge/License-CC--BY--1.0-green.svg)](https://github.com/SASA-AKITO/FlexPress\_flows/blob/main/LICENSE)
各種圧縮ツールを統一的なインターフェースで使用可能にします．

## Description
ファイルの圧縮形式は数多くの種類が存在しています．これらは，それぞれインターフェースが異なり，使いこなすには複雑です．このツールはそれらの圧縮形式を統一的なインターフェースで操作可能にします．

## Usage
```
FlexPress [OPTIONS] <ARGUMENTS...>
OPTIONS
  -m, --mode <MODE>     Mode of operation. available: extract, archive, and auto.
                        Default is auto.
  -d, --dest <DEST>     Destination of the extraction results.
                        Default is the current directory.
  -o, --output <FILE>   Output file for the archive.
                        Default is the totebag.zip.
                        The archive formats are guessed form extension of the file name.
      --overwrite       Overwrite the output file if it exists.
  -v, --verbose         Display verbose output.
  -h, --help            Display this help message.
ARGUMENTS
  extract mode: archive files to be extracted.
  archive mode: files to be archived.
  auto mode:    if the arguments have archive files, it will extract them.
                Otherwise, it will archive the files.
```