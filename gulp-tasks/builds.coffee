#
# Dependencies
#
runSequence = require('run-sequence')

gulp = require('gulp')

config = require('../gulp.config')


#
# Local
#
gulp.task('build:local', (done) ->
  runSequence(
    # 'clean:local_files',
    # 'clean:dest',
    # 'copy:local',
    #
    # 'html2js:local',
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
