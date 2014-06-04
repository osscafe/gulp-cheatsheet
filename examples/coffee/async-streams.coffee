gulp = require 'gulp'
merge = require 'merge-stream'
less = require 'gulp-less'
autoprefixer = require 'gulp-autoprefixer'

gulp.task 'css', ->
    merge(
        gulp.src './css/src/first.less'
        .pipe less()
        .pipe gulp.dest './css/'
        gulp.src './css/src/second.css'
        .pipe autoprefixer 'last 2 versions'
        .pipe gulp.dest './css/'
    )