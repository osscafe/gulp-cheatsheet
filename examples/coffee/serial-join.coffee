gulp = require 'gulp'
streamqueue = require 'streamqueue'
less = require 'gulp-less'
cssimport = require 'gulp-cssimport'
autoprefixer = require 'gulp-autoprefixer'
concat = require 'gulp-concat'
minifyCss = require 'gulp-minify-css'

gulp.task 'css', ->
    streamqueue objectMode: true,
        gulp.src './css/src/first.less'
        .pipe less()
        gulp.src './css/src/second.css'
        .pipe cssimport()
        .pipe autoprefixer 'last 2 versions'
    .pipe concat 'app.css'
    .pipe minifyCss()
    .pipe gulp.dest './css/'
