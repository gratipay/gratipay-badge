var gulp = require('gulp');
var request = require('request');

// Define a task to load html2canvas
gulp.task('install', function () {
  request('http://google.com/')
    .pipe(gulp.dest('hello/'));
});