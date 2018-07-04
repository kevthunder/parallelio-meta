var gulp = require('gulp');
var exec = require('child_process').exec;
var path = require('path');
var stripAnsi = require('strip-ansi');

gulp.task('check', function(cb) {
  exec(path.normalize('node_modules/.bin/gr')+' @parallelio', function (err, stdout, stderr) {
    console.log(stripAnsi(stdout).split(/\r?\n/));
    console.log(stderr);
    cb(err);
  });
});

gulp.task('default', ['check']);