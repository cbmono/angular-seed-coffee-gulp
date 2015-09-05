#
# Dependencies
#
_  = require('lodash')
runSequence = require('run-sequence')
config = require('../gulp.config')

gulp = require('gulp')
coffeelint  = require('gulp-coffeelint')

#
# Tasks
# Lint coffeescript (check if code fits best practice)
#
gulp.task('coffeelint', ->
  gulp
    .src(_.flatten([
      config.paths.gulpfile
      config.paths.scripts
    ], true))

    .pipe(coffeelint())
    .pipe(coffeelint.reporter())
)
