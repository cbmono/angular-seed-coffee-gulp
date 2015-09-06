#
# Dependencies
#
_  = require('lodash')
runSequence = require('run-sequence')
config = require('../gulp.config')

gulp = require('gulp')
watch = require('gulp-watch')

#
# Tasks
#
gulp.task('watch', ->

  #
  # Watch Coffee
  #
  gulp.watch([
    config.paths.scripts
  ], ->
    runSequence(
      [ 'coffee:local' ],

      -> console.log('\u2705  JS re-build complete')
    )
  )

  #
  # Coffeelint
  #
  gulp.watch([
    config.paths.scripts
  ], _.debounce( ->
    runSequence('coffeelint')
  , 6000))

  #
  # HTML's
  #
  gulp.watch([
    config.paths.htmls
    config.paths.images
    config.paths.index
  ], ->
    runSequence(
      'copy:local'
      'rename:local:index'

      -> console.log('\u2705  HTML re-build complete')
    )
  )

  #
  # SASS'
  #
  gulp.watch(_.flatten([
    config.paths.sass
    config.paths.sass_main
  ], true), ->
    runSequence(
      'compass:local'

      -> console.log('\u2705  CSS re-build complete')
    )
  )
)
