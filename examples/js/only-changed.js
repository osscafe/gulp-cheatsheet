var gulp = require('gulp');
var changed = require('gulp-changed');
var uglify = require('gulp-uglify');

gulp.task('js', function(){
    return gulp.src('./src/*.js')
        .pipe(changed('./dist/'))
        .pipe(uglify())
        .pipe(gulp.dest('./dist/'));
});
