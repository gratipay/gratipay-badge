var fs = require('fs');
var page = require('webpage').create();

// Grabbed from https://github.com/twolfson/icomoon-phantomjs/blob/0.2.7/lib/icomoon-phantomjs.js#L5-L14
// Run a check function every 100 ms
function waitFor(checkFn, cb) {
  if (checkFn()) {
    cb();
  } else {
    setTimeout(function waitForFn () {
      waitFor(checkFn, cb);
    }, 100);
  }
}

// Taken from https://gist.github.com/atk/1020396
var decodeBase64 = function(d,b,c,u,r,q,x){for(r=q=x='';c=d[x++];~c&&(u=q%4?u*64+c:c,q++%4)?r+=String.fromCharCode(255&u>>(-2*q&6)):0)c=b.indexOf(c);return r};
var base64Map = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';

// Open our local file
var __dirname = phantom.libraryPath;
page.open(__dirname + '/index.html', function (status) {
  // If it failed to open, throw a tantrum
  if (status === 'fail') {
    throw new Error('Could not open "index.html"');
  }

  // Get the rendered image
  function getImageStr() {
    return page.evaluate(function () {
      return window.image;
    });
  }
  waitFor(function waitForImageToLoad () {
    return getImageStr();
  }, function handleImage () {
    // Convert 'data:image/png;base64,iVBORw0KGgoAAAANSU' into an image on disk
    var imageUri = getImageStr();
    var imageStr = imageUri.replace('data:image/png;base64,', '');
    var binaryImage = decodeBase64(imageStr, base64Map);
    var destPath = __dirname + '/../dist/gittip.png';
    fs.write(destPath, binaryImage, 'wb');
    console.log('Wrote gittip badge to "' + destPath + '"');
    phantom.exit(0);
  });
});