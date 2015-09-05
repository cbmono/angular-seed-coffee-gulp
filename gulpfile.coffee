#
# Dependencies
#
del = require('del')
open  = require('open')
requireDir = require('require-dir')
runSequence = require('run-sequence')

gulp = require('gulp')
coffee = require('gulp-coffee')
concat = require('gulp-concat')
connect = require('gulp-connect')
uglify = require('gulp-uglify')
imagemin = require('gulp-imagemin')
sourcemaps = require('gulp-sourcemaps')
ngClassify = require('gulp-ng-classify')

#
# Tasks
#
tasks = requireDir('./gulp_tasks')


# https://github.com/gulpjs/gulp#incremental-builds





#########################################################
#
# Run local server, open browser and watch files changes
#
#########################################################

# Create a local server
gulp.task('connect', ->
  connect.server({
    root: 'builds/local/'
    port: 8000
  })
)

# Open default browser
gulp.task('open:local', ->
  open('http://localhost:8000/')
)

# Launch app locally
gulp.task('serve', ->
  runSequence(
    #'build:local'
    'connect'

    [ 'open:local', 'watch' ]   # This runs in parallel
  )
)
