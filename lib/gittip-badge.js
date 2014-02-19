var page = require('webpage').create();

// Open our local file
page.open(phantom.libraryPath + '/index.html', function (status) {
  // If it failed to open, throw a tantrum
  if (status === 'fail') {
    throw new Error('Could not open "index.html"');
  }

  // Get the rendered image
  setTimeout(function () {
    var imageStr = page.evaluate(function () {
      return window.image;
    });
    console.log(imageStr);
  }, 100);
});