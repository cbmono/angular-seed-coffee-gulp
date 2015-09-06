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

    # Others
    'rename:local:index'
    # 'rename:local:robots'

    # 'htmlmin',
    # 'svgmin',
    #
    # 'compress',
    # 'copy:gziped',
    # 'clean:gziped'

    done
  )

  runSequence(
    'coffeelint'
  )
)

#
# Production
#
# gulp.task('build:production', (done) ->
#   runSequence(
#     # Remove old files and copy new ones
#     'clean:production_files',
#     'copy:production',
#
#     # Coffee & JS libs
#     'concat:production_js_libs'
#     # 'ngClassify',
#     'coffee:production',
#
#     # Sass & CSS libs
#     'compass:production',
#     'concat:production_css_libs'
#
#     # Others
#     # 'replace:local',
#
#     # 'htmlmin',
#     # 'svgmin',
#     #
#     # 'compress',
#     # 'copy:gziped',
#     # 'clean:gziped'
#
#     done
#   )
#
#   runSequence(
#     'coffeelint'
#   )
# )
