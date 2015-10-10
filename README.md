
# data-uri

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

[Wikipedia]: https://en.wikipedia.org/wiki/Data_URI_scheme
[MIT-License]: https://tldrlegal.com/license/mit-license
