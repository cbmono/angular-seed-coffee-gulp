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
    'clean:local_files',
    # 'clean:dest',
    'copy:local',
    #

    # 'ngClassify',
    'coffee:local',
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
