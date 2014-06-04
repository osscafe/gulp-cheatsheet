gulp = require 'gulp'
coffee = require 'gulp-coffee'
uglify = require 'gulp-uglify'

gulp.task 'js', ->
    gulp.src './js/src/*.coffee'
    .pipe coffee()
    .pipe uglify()
    .pipe gulp.dest ‘./js/‘

gulp.task 'watch', ->
    gulp.watch './js/src/*.coffee', ['js']