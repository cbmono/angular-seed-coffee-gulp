#
# Dependencies
#
del = require('del')
runSequence = require('run-sequence')
config = require('../gulp.config')

gulp = require('gulp')

#
# Clean (delete) build files
#

# gulp.task('clean', [
#   'clean:local_css'
#   'clean:local_files'
#   'clean:production_css'
#   'clean:production_files'
#   'clean:dest'
#   'clean:gziped'
# ])

gulp.task('clean:local_css', ->
  del.sync(config.dest.local.css)
)

gulp.task('clean:local_files', ->
  del.sync(config.dest.local.main + '/*')
)

# gulp.task('clean:production_css', ->
#   del.sync('builds/production/css/app')
# )
#
# gulp.task('clean:production_files', ->
#   del.sync('builds/production/**/!(.gitkeep)*')
# )

# gulp.task('clean:dest', ->
#   del.sync('dest')
# )
#
# gulp.task('clean:gziped', ->
#   del.sync('gziped')
# )
