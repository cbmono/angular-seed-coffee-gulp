#
# Dependencies
#
_  = require('lodash')
runSequence = require('run-sequence')

gulp = require('gulp')
watch = require('gulp-watch')


#
# Tasks
#
gulp.task('watch', ->

  #
  # Watch Coffee and HTML files
  #
  gulp.watch([
    'app/**/*.coffee'
    'app/**/*.html'
  ], ->
    runSequence(
      'ngClassify'
      [ 'coffee:local' ],

      -> console.log('\u2705  Re-build complete')
    )
  )

  #
  # Watch only CoffeeScript files
  #
  gulp.watch([
    'app/**/*.coffee'
  ], _.debounce( ->
    runSequence('coffeelint')
  , 6000))

  #
  # Watch SASS files
  #
  gulp.watch([
    'app/**/*.sass'
    'app/**/*.html'
  ], ->
    runSequence(
      'compass:local'
      'concat:local_css'
      'clean:local_css'
      'copy:local'
    )
  )
)
