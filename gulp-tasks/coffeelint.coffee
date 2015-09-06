#
# Dependencies
#
_  = require('lodash')
config = require('../gulp.config')

gulp = require('gulp')
coffeelint = require('gulp-coffeelint')

#
# Lint coffeescript files
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
