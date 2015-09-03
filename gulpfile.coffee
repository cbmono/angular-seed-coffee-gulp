#
# Dependencies
#
gulp = require('gulp')
coffee = require('gulp-coffee')
concat = require('gulp-concat')
connect = require('gulp-connect')
uglify = require('gulp-uglify')
imagemin = require('gulp-imagemin')
sourcemaps = require('gulp-sourcemaps')
ngClassify = require('gulp-ng-classify')

del = require('del')
open  = require('open')
requireDir = require('require-dir')
runSequence = require('run-sequence')


#
# Config
#
paths = {
  scripts: [
    'client/js/**/*.coffee', '!client/external/**/*.coffee'
  ]
  images: 'client/img/**/*'
};

tasks = requireDir('./gulp_tasks')





#
# Build local
#
gulp.task('build:local', (done) ->
  runSequence(
    # 'clean:local_files',
    # 'clean:dest',
    # 'copy:local',
    #
    # 'html2js:local',
    # 'ngClassify',
    # 'coffee:local',
    # 'concat:local_libs',
    # 'concat:local_main_libs',
    #
    # 'fetch-translation:local',
    #
    # 'compass:local',
    # 'concat:local_css',
    # 'clean:local_css',
    #
    # 'replace:local',

    done
  )

  runSequence(
    'coffeelint'
  )
)


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
