#
# Dependencies
#
runSequence = require('run-sequence')
config = require('../gulp.config')

gulp = require('gulp')

#
# Local
#
gulp.task('build:local', (done) ->
  runSequence(
    # Remove old files and copy new ones
    'clean:local_files',
    'copy:local',

    # Coffee & JS libs
    'concat:local_js_libs'
    # 'ngClassify',
    'coffee:local',

    # Sass & CSS libs
    'compass:local',
    'concat:local_css_libs'

    # index.html
    # 'replace:local',

    done
  )

  runSequence(
    'coffeelint'
  )
)
