var gulp = require('gulp');
var coffee = require('gulp-coffee');
var uglify = require('gulp-uglify');

gulp.task('js', function(){
    return gulp.src('./js/src/*.coffee')
        .pipe(coffee())
        .pipe(uglify())
        .pipe(gulp.dest('./js/'));
});
gulp.task('watch', function(){
    gulp.watch('./js/src/*.coffee', ['js']);
});
