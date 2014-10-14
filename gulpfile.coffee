path    = require 'path'
gulp    = require 'gulp'
foreach = require 'gulp-foreach'
sketch  = require 'gulp-sketch'
rename  = require 'gulp-rename'

gulp.task 'default', ['pdf', 'png']

gulp.task 'pdf', ->
  gulp.src './src/*.sketch'
  .pipe sketchWithPrefix 'pdf'
  .pipe gulp.dest './dist/'

gulp.task 'png', ->
  gulp.src './src/*.sketch'
  .pipe sketchWithPrefix 'png'
  .pipe gulp.dest './images/'

# inline-plugin: sketch + add original file name as prefix
sketchWithPrefix = (format) ->
  foreach (stream, file) ->
    basename = path.basename file.path, '.sketch'
    gulp.src file.path
    .pipe sketch
      export: 'artboards',
      formats: format
    .pipe rename prefix: "#{basename}-"