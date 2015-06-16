var gulp = require('gulp');
var autoprefixer = require('gulp-autoprefixer');
var minifyCss = require('gulp-minify-css');
var rename = require('gulp-rename');

gulp.task('css', function(){
    return gulp.src('./css/src/style.css')
        .pipe(autoprefixer('last 2 versions'))
        .pipe(gulp.dest('./css/'))
        .pipe(minifyCss())
        .pipe(rename({extname: '.min.css'}))
        .pipe(gulp.dest('./css/'));
});
