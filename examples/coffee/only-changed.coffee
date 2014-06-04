gulp = require 'gulp'
changed = require 'gulp-cached'
uglify = require 'gulp-uglify'

gulp.task 'script', ->
    gulp.src './src/*.js'
    .pipe changed './dist/'
    .pipe uglify()
    .pipe gulp.dest './dist/'