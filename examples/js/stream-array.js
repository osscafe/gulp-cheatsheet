var gulp = require('gulp');
var es = require('event-stream');
var consolidate = require('gulp-consolidate');
var rename = require('gulp-rename');

data = [
    {
        name: 'apple',
        title: 'Apple Cake',
        attrs: some_data
    },
    {
        name: 'orange',
        title: 'Orange Cookie',
        attrs: some_data
    }
];

gulp.task('page', function(){
    var tasks = data.map(function(entry){
        return gulp.src('./templates/a.js')
            .pipe(consolidate({
                title: entry.title,
                attrs: entry.attrs
            }))
            .pipe(rename({
                basename: entry.name,
                extname: '.html'
            }))
            .pipe(gulp.dest('./html/'));
    });
    return es.concat.apply(null, tasks);
});