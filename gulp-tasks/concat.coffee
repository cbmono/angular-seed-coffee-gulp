#
# Dependencies
#
config = require('../gulp.config')

gulp = require('gulp')
concat = require('gulp-concat')
minifyCss = require('gulp-minify-css')

#
# Concat
#

# Local CSS libs
gulp.task('concat:local:css_libs', ->
  gulp
    .src(config.libs.local.css)

    .pipe(concat('libs.css'))
    .pipe(gulp.dest(config.dest.local.css))
)

# Local JS libs
gulp.task('concat:local:js_libs', ->
  gulp
    .src(config.libs.local.js)

    .pipe(concat('libs.js'))
    .pipe(gulp.dest(config.dest.local.scripts))
)

# Production CSS libs (+ minified)
gulp.task('concat:production:css_libs', ->
  gulp
    .src(config.libs.production.css)

    .pipe(concat('libs.css'))
    .pipe(minifyCss({ debug: true }))
    .pipe(gulp.dest(config.dest.production.css))
)

# Production JS libs
# (no need to uglify, because already using `.min` verisions)
gulp.task('concat:production:js_libs', ->
  gulp
    .src(config.libs.production.js)

    .pipe(concat('libs.js'))
    .pipe(gulp.dest(config.dest.production.scripts))
)
