#
# Dependencies
#
config = require('../gulp.config')

gulp = require('gulp')
htmlmin = require('gulp-htmlmin')

#
# Minify html files
#
gulp.task('htmlmin', ->
  options = {
    removeComments: true
    collapseWhitespace: true
  }

  gulp
    .src(config.dest.production.main + '/**/*.html')

    .pipe(htmlmin(options))
    .pipe(gulp.dest(config.dest.production.main))
)
