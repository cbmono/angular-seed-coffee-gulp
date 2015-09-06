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
    'clean:local',
    'copy:local',

    # Coffee & JS libs
    'concat:local:js_libs'
    'coffee:local',

    # Sass & CSS libs
    'compass:local',
    'concat:local:css_libs'

    # Others
    'rename:local:index'

    done
  )

  runSequence(
    'coffeelint'
  )
)

#
# Production
#
gulp.task('build:production', (done) ->
  runSequence(
    # Remove old files and copy new ones
    'clean:production',
    'copy:production',

    # Coffee & JS libs
    'concat:production:js_libs'
    'coffee:production',

    # Sass & CSS libs
    'compass:production',
    'concat:production:css_libs'

    # Others
    'rename:production:index'
    'rename:production:robots'
    'htmlmin',
    # 'gzip'

    done
  )

  runSequence(
    'coffeelint'
  )
)
