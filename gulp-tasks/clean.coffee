#
# Dependencies
#
del = require('del')
config = require('../gulp.config')

gulp = require('gulp')

#
# Clean (delete) build files
#

# Local
gulp.task('clean:local', ->
  del.sync(config.dest.local.main + '/*')
)

# Production
gulp.task('clean:production', ->
  del.sync(config.dest.production.main + '/*')
)
