gulp = require 'gulp'
autoprefixer = require 'gulp-autoprefixer'
minifyCss = require 'gulp-minify-css'
rename = require 'gulp-rename'

gulp.task 'css', ->
    gulp.src './css/src/style.css'
    .pipe autoprefixer 'last 2 versions'
    .pipe gulp.dest ‘./css/‘
    .pipe minifyCss()
    .pipe rename extname: '.min.css'
    .pipe gulp.dest ‘./css/‘
