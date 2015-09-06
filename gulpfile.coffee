#
# Dependencies
#
open  = require('open')
requireDir = require('require-dir')
runSequence = require('run-sequence')
config = require('./gulp.config')

gulp = require('gulp')
connect = require('gulp-connect')

#
# Custom Tasks
#
tasks = requireDir('./gulp-tasks')


#########################################################
#
# Run local server, open browser and watch files changes
#
#########################################################

# https://github.com/gulpjs/gulp#incremental-builds

# Create a local server
gulp.task('connect', ->
  connect.server({
    root: config.dest.local.main
    port: 8000
  })
)

# Open default browser
gulp.task('open', ->
  open('http://localhost:8000/')
)

# Launch app locally
gulp.task('serve', ->
  runSequence(
    'build:local'
    'connect'

    [ 'open' , 'watch' ]   # This runs in parallel
  )
)
