# gittip-badge

GitHub styled badge for [Gittip][gittip]

[![Gittip badge][badge]][badge]

[gittip]: https://www.gittip.com/
[badge]: dist/gittip.png

## Usage
To ensure you are using a stable badge, it is suggested you use a semver'd badge.

### Markdown

```md
[![Support via Gittip](https://rawgithub.com/twolfson/gittip-badge/0.1.0/dist/gittip.png)](https://www.gittip.com/USERNAME/)
```

### HTML

```html
<a href="https://www.gittip.com/USERNAME/">
  <img alt="Support via Gittip" src="https://rawgithub.com/twolfson/gittip-badge/0.1.0/dist/gittip.png"/>
</a>
```

### Raw URL

```
https://rawgithub.com/twolfson/gittip-badge/0.1.0/dist/gittip.png
```

## Documentation
The build process is tedious and questionably non-trivial.

1. Work in your browser (suggested tools are [serve][] and [livereload][] for quick setup and iteration respectively)
2. Enable a high constract background (e.g. `#F0F`)
3. Take a screenshot of the image (suggested tool is [screenshot-as-a-service][screenshot])
4. Crop and remove high contrast background from screenshot (suggested tool is [pixlr][])
5. Disco!

[serve]: https://npmjs.org/package/serve
[livereload]: https://github.com/lepture/python-livereload
[screenshot]: https://github.com/fzaninotto/screenshot-as-a-service
[pixlr]: http://pixlr.com/editor/

## Donating
Donations are accepted via [Gittip][gittip-twolfson].

[![Support via Gittip][badge]][gittip-twolfson]

[gittip-twolfson]: https://www.gittip.com/twolfson/

## Contributing
In lieu of a formal styleguide, take care to maintain the existing coding style.

## License
Copyright (c) 2013 Todd Wolfson

Licensed under the MIT license.
