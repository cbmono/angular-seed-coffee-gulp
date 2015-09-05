#
# Dependencies
#
_  = require('lodash')
runSequence = require('run-sequence')

gulp = require('gulp')
watch = require('gulp-watch')

config = require('../gulp.config')

#
# Tasks
#
gulp.task('watch', ->

  #
  # Watch Coffee and HTML files
  #
  gulp.watch([
    config.paths.scripts
    config.paths.htmls
  ], ->
    runSequence(
      #'ngClassify'
      [ 'coffee:local' ],

      -> console.log('\u2705  Re-build complete')
    )
  )

  #
  # Watch only Coffeescript files
  #
  gulp.watch([
    config.paths.scripts
  ], _.debounce( ->
    runSequence('coffeelint')
  , 6000))

  #
  # Watch SASS files
  #
  # gulp.watch([
  #   'app/**/*.sass'
  #   'app/**/*.html'
  # ], ->
  #   runSequence(
  #     'compass:local'
  #     'concat:local_css'
  #     'clean:local_css'
  #     'copy:local'
  #   )
  # )
)
