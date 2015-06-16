var gulp = require('gulp');
var cached = require('gulp-cached');
var uglify = require('gulp-uglify');
var remember = require('gulp-remember');
var concat = require('gulp-concat');

gulp.task('script', function(){
    return gulp.src('./js/src/*.js')
        .pipe(cached())
        .pipe(uglify())
        .pipe(remember())
        .pipe(concat('app.js'))
        .pipe(gulp.dest('./js/'));
});
