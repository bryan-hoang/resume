# resume

[![standard-readme compliant](https://img.shields.io/badge/standard--readme-OK-green.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)
[![CI GitHub Action status](https://github.com/bryan-hoang/resume/actions/workflows/ci.yml/badge.svg)](https://github.com/bryan-hoang/resume/actions/workflows/ci.yml)

My resume, written in Typst!

## Install

Prerequisites:

- [Typst](https://github.com/typst/typst#installation)

Steps:

```console
git clone https://github.com/bryan-hoang/resume.git
cd resume
typst compile resume.typ
```

## Usage

To make tailoring the resume for specific sectors easier, set the
`TARGET_SECTOR` environment variable when compiling the document to include
additional elements. It's a comma separate list. e.g.,

```console
TARGET_SECTOR=ai,education typst compile resume.typ
```

## Preview

With `TARGET_SECTOR` being unset:

![Resume Screenshot](resume-preview.jpg)

## Maintainers

[@bryan-hoang](https://github.com/bryan-hoang)

## Contributing

PRs accepted.

Small note: if editing the README, please conform to the
[standard-readme](https://github.com/RichardLitt/standard-readme) specification.

## License

MIT © 2024 Bryan Hoang
