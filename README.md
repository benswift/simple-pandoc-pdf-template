# Pandoc-powered markdown->pdf document template

Sometimes you just want to write a simple markdown document and have nice pdf
output without futzing with LaTeX.

Pandoc is doing all the heavy lifting---this just adds a simple LaTeX "header"
which gives decent-looking pdf output and a `Makefile` to tie it all together.

_Note:_ if you need citations/references, check out the `bibtex` branch in this
repo.

## Usage

1. write your content in `document.md`
2. run `make`

## Requirements

- [make](https://www.gnu.org/software/make/) (optional, but handy)
- [Pandoc](https://pandoc.org)
- [LaTeX](https://www.latex-project.org)

## Customisation

If you know a bit of LaTeX and want to tweak the output, then you can mess with
the header stuff in `pandoc-template.tex`. If you want to get fancy, there are a
bunch of [Pandoc-defined
variables](https://pandoc.org/MANUAL.html#using-variables-in-templates) you can
use.

## Caveats

Almost all of this can be done directly with Pandoc and the right CLI
flags/variables, but sometimes it's just easier to edit the LaTeX in the
template directly rather than dealing with long, complicated `pandoc`
invocations with heaps of flags.

Pandoc can generate all the output formats, but this template is really only
geared towards the pdf-via-LaTeX pathway. So if you try and do something else it
might not work.

## Licence

Copyright (C) 2019  Ben Swift

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
