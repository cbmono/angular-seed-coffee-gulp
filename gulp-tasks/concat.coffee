#
# Dependencies
#
runSequence = require('run-sequence')
config = require('../gulp.config')

gulp = require('gulp')
concat = require('gulp-concat')

#
# Concat
#
gulp.task('concat:local_css_libs', ->
  gulp
    .src(config.libs.local.css)

    .pipe(concat('libs.css'))
    .pipe(gulp.dest(config.dest.local.css))
)

gulp.task('concat:local_js_libs', ->
  gulp
    .src(config.libs.local.js)

    .pipe(concat('libs.js'))
    .pipe(gulp.dest(config.dest.local.scripts))
)
