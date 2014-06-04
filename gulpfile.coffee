gulp = require 'gulp'
es = require 'event-stream'
sketch = require 'gulp-sketch'
rename = require 'gulp-rename'

pages = ['en-js', 'en-coffee', 'ja-js']

gulp.task 'pdf', ->
  es.concat.apply null,
    for page in pages
      gulp.src "./src/#{page}.sketch"
      .pipe sketch
        export: 'artboards',
        formats: 'pdf'
      .pipe rename prefix: "#{page}-"
      .pipe gulp.dest './dist/'

gulp.task 'png', ->
  es.concat.apply null,
    for page in pages
      gulp.src "./src/#{page}.sketch"
      .pipe sketch
        export: 'artboards',
        formats: 'png'
      .pipe rename prefix: "#{page}-"
      .pipe gulp.dest './images/'
