gulp = require 'gulp'
cached = require 'gulp-cached'
uglify = require 'gulp-uglify'
remember = require 'gulp-remember'
concat = require 'gulp-concat'

gulp.task ‘script’, ->
    gulp.src './js/src/*.js'
    .pipe cached()
    .pipe uglify()
    .pipe remember()
    .pipe concat 'app.js'
    .pipe gulp.dest ‘./js/‘
