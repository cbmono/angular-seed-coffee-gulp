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
    .src([
      'app/bower_components/html5-boilerplate/dist/css/normalize.css'
      'app/bower_components/html5-boilerplate/dist/css/main.css'
    ])

    .pipe(concat('libs.css'))
    .pipe(gulp.dest(config.dest.local.css))
)
