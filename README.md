
# data-uri

[![NPM version][npm-image]][npm-url]
[![build status][travis-image]][travis-url]

Convert a given file into [Data URI scheme][Wikipedia].

## Installation

```sh
$ make install
$ data-uri -f hello.png
```

or via `npm` (as `duri`):

```sh
$ npm install duri -g
$ duri -f hello.png
```

## Usage

```sh
$ datauri -f /path/to/image.png > image.datauri
$ echo "<img src=\"$(datauri -f /path/to/image.png)\">" > image_tag.html
$ datauri -f /path/to/image.png | pbcopy
```

## Tests

```sh
$ make test
```

## License

[MIT][MIT-License]

[npm-image]: https://img.shields.io/npm/v/duri.svg?style=flat-square
[npm-url]: https://npmjs.org/package/duri
[travis-image]: https://img.shields.io/travis/marcusandre/data-uri/master.svg?style=flat-square
[travis-url]: https://travis-ci.org/marcusandre/data-uri
[Wikipedia]: https://en.wikipedia.org/wiki/Data_URI_scheme
[MIT-License]: https://tldrlegal.com/license/mit-license
