gulp = require 'gulp'
es = require 'event-stream'
consolidate = require 'gulp-consolidate'
rename = require 'gulp-rename'

data =
    apple:
        title: 'Apple Cake'
        attrs: some_data
    orange:
        title: 'Orange Cookie'
        attrs: some_data

gulp.task 'page', ->
    es.concat.apply null,
         for name, options of data
            gulp.src './templates/a.html'
            .pipe consolidate 'lodash',
                title: options.title
                attrs: options.attrs
            .pipe rename
                basename: name
                extname: '.html'
            .pipe gulp.dest './html/'
