var gulp = require('gulp');
var merge = require('merge-stream');
var less = require('gulp-less');
var autoprefixer = require('gulp-autoprefixer');

gulp.task('css', function(){
    return merge(
        gulp.src('./css/src/first.less')
            .pipe(less())
            .pipe(gulp.dest('./css/')),
        gulp.src('./css/src/second.css')
            .pipe(autoprefixer())
            .pipe(gulp.dest('./css/'))
    );
});
