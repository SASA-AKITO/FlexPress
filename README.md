# FlexPress

[![License](https://img.shields.io/badge/License-CC--BY--1.0-green.svg)](https://github.com/SASA-AKITO/FlexPress\_flows/blob/main/LICENSE)
[![Coverage Status](https://coveralls.io/repos/github/SASA-AKITO/FlexPress/badge.svg?branch=main)](https://coveralls.io/github/SASA-AKITO/FlexPress?branch=main)
[![Rust Report Card](https://rust-reportcard.xuri.me/badge/github.com/sasa-akito/flexpress)](https://rust-reportcard.xuri.me/report/github.com/sasa-akito/flexpress)
[![DOI](https://zenodo.org/badge/786669064.svg)](https://zenodo.org/doi/10.5281/zenodo.11178525)

A tool for extracting/archiving files and directories in multiple formats.

## Description

There are many archive formats and their tools. The one problem with using each tool is that its interfaces are slightly different.
Then, The `FlexPress` treats the archive files as the same interface.
The tool can extract archive files and archive files and directories.

## Usage

```sh
A tool for extracting/archiving files and directories in multiple formats.

Usage: FlexPress [OPTIONS] [ARGUMENTS]...

Arguments:
  [ARGUMENTS]...  List of files or directories to be processed.

Options:
  -m, --mode <MODE>          Mode of operation. [default: auto] [possible values: auto, archive, extract, list]
  -o, --output <DEST>        Output file in archive mode, or output directory in extraction mode
      --to-archive-name-dir  extract files to DEST/ARCHIVE_NAME directory (extract mode).
  -n, --no-recursive         No recursive directory (archive mode).
  -v, --verbose              Display verbose output.
      --overwrite            Overwrite existing files.
  -h, --help                 Print help
  -V, --version              Print version
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

## Install

```sh
brew install SASA-AKITO/tap/FlexPress
```

## :whale: Docker

```sh
docker run -it --rm -v $PWD:/workdir ghcr.io/SASA-AKITO/FlexPress:0.5.0 [OPTIONS] [ARGUMENTS]...
```

- **Working directory**: `/workdir`
- **User**: `nonroot`

## About

### Authors

* Sasahara Akito ([SASA-AKITO](https://github.com/SASA-AKITO/))

### The Logo and the Origin of FlexPress

The general word, FlexPress, is a bag for carrying things.
From this, I chose the name of the tool, FlexPress, as a tool for packing files and directories carelessly.