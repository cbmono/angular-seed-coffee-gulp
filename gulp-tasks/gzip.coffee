#
# Dependencies
#
del = require('del')
config = require('../gulp.config')

gulp = require('gulp')
gzip = require('gulp-gzip')

#
# Gzip-Compress css, html, js and json files
#
gulp.task('gzip', ->
  # gzip files
  gulp
    .src([
      config.dest.production.main + '/**/*.html'
      config.dest.production.main + '/**/*.js'
      config.dest.production.main + '/**/*.json'
      config.dest.production.main + '/**/*.css'
    ], base: process.cwd())

    .pipe(gzip({
      append: false # do not append ".gz"
    }))
    .pipe(gulp.dest('gziped'))

    # copy from /gziped into final folder
    .on('end', ->
      gulp
        .src(
          'gziped/' + config.dest.production.main + '/**/*',
          { base: 'gziped/' + config.dest.production.main }
        )
        .pipe(gulp.dest(config.dest.production.main))
        .on('end', -> del.sync('gziped'))
    )
)
