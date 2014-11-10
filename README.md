# gratipay-badge

GitHub styled badge for [Gratipay][]

PNG: ![Gratipay badge][] SVG: ![Gratipay badge][svg-badge]

[Gratipay]: https://gratipay.com/
[Gratipay badge]: dist/gratipay.png
[svg-badge]: http://rawgit.com/gratipay/gratipay-badge/master/dist/gratipay.svg

## Usage
To ensure you are using a stable badge, it is suggested you use a semver'd badge.

### Markdown
**PNG:**

```md
[![Support via Gratipay](https://cdn.rawgit.com/gratipay/gratipay-badge/2.3.0/dist/gratipay.png)](https://gratipay.com/USERNAME/)
```

**SVG:**

```md
[![Support via Gratipay](https://cdn.rawgit.com/gratipay/gratipay-badge/2.3.0/dist/gratipay.svg)](https://gratipay.com/USERNAME/)
```

### HTML
**PNG:**

```html
<a href="https://gratipay.com/USERNAME/">
  <img alt="Support via Gratipay" src="https://cdn.rawgit.com/gratipay/gratipay-badge/2.3.0/dist/gratipay.png"/>
</a>
```

**SVG:**

```html
<a href="https://gratipay.com/USERNAME/">
  <img alt="Support via Gratipay" src="https://cdn.rawgit.com/gratipay/gratipay-badge/2.3.0/dist/gratipay.svg"/>
</a>
```

### Raw URL
**PNG:**

```
https://cdn.rawgit.com/gratipay/gratipay-badge/2.3.0/dist/gratipay.png
```

**SVG:**

```
https://cdn.rawgit.com/gratipay/gratipay-badge/2.3.0/dist/gratipay.svg
```

### Minor and patch releases
As of `2.0.0`, we offer variable minor and patch branches. For example, if you would like `gratipay-badge@2` but would like backwards compatible changes in the future, then you can use `2.x.x` over `2.3.0`.

**PNG:**

```
// Allow minor updates
https://cdn.rawgit.com/gratipay/gratipay-badge/2.x.x/dist/gratipay.png

// Allow patch updates
https://cdn.rawgit.com/gratipay/gratipay-badge/2.3.x/dist/gratipay.png
```

**SVG:**

```
https://cdn.rawgit.com/gratipay/gratipay-badge/2.x.x/dist/gratipay.svg
https://cdn.rawgit.com/gratipay/gratipay-badge/2.3.x/dist/gratipay.svg
```

## Documentation
The latest images are located under `dist/gratipay.png` and `dist/gratipay.svg`. If you would like to build your own, run `./build.sh`.

You must have [PhantomJS][] and [pngcrush][] installed for the build script to work. We require [pngcrush][] since the output from [PhantomJS][] is approximately 12x larger.

If you would like to adjust the image, you can find the HTML reference page in `lib/index.html`. It is suggested that you use [serve][] and [livereload][] to host and develop against the image.

[PhantomJS]: http://phantomjs.org/
[pngcrush]: http://pmt.sourceforge.net/pngcrush/
[serve]: https://npmjs.org/package/serve
[livereload]: https://github.com/lepture/python-livereload

## Donating
Support this project and [others by twolfson][gratipay-twolfson] via [gratipay][gratipay-twolfson].

[![Support via Gratipay][gratipay]][gratipay-twolfson]

[gratipay]: https://cdn.rawgit.com/gratipay/gratipay-badge/2.3.0/dist/gratipay.png
[gratipay-twolfson]: https://gratipay.com/twolfson/

## License
As of Feb 19 2014, Todd Wolfson has released this repository and its contents to the public domain.

It has been released under the [UNLICENSE][].

[UNLICENSE]: UNLICENSE

Previous to this, it was licensed under the [MIT license][].

[MIT license]: https://github.com/gratipay/gratipay-badge/blob/ee5cc0ad6573ef6e80048c7229bc1b7c01942b4c/README.md#license
