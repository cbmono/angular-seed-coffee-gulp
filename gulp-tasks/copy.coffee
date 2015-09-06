#
# Dependencies
#
mergeStream = require('merge-stream')
config = require('../gulp.config')

gulp = require('gulp')

#
# Copy Files
#
copy = (env) ->
  # Images
  img = gulp
    .src(config.paths.images, { base: 'app/' })
    .pipe(gulp.dest(config.dest[env].main))

  # HTML partials
  html = gulp
    .src(config.paths.htmls, { base: 'app/src/' })
    .pipe(gulp.dest(config.dest[env].htmls))

  #
  # ASYNC - we have to wait until everything is done
  #
  mergeStream(img, html)


# Local
gulp.task('copy:local', copy.bind(this, 'local'))

# Production
gulp.task('copy:production', copy.bind(this, 'production'))


# gulp.task('copy:gziped', ->
#   gulp
#     .src('gziped/builds/production/**/*', { base: 'gziped/builds/production' })
#     .pipe(gulp.dest('builds/production'))
# )
