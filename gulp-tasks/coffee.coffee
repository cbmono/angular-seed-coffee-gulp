#
# Dependencies
#
config = require('../gulp.config')

gulp = require('gulp')
concat = require('gulp-concat')
coffee = require('gulp-coffee')
uglify = require('gulp-uglify')
sourcemaps = require('gulp-sourcemaps')

#
# Compile Coffeescript files and concatenate them
#

# Local Coffeescript files (+ sourcemaps)
gulp.task('coffee:local', ->
  gulp
    .src(config.paths.scripts)

    .pipe(sourcemaps.init())
    .pipe(coffee())
    .pipe(concat('app.js'))
    .pipe(sourcemaps.write('.'))
    .pipe(gulp.dest(config.dest.local.scripts))
)

# Production Coffeescript files (+ uglify)
gulp.task('coffee:production', ->
  gulp
    .src(config.paths.scripts)

    .pipe(coffee())
    .pipe(concat('app.js'))
    .pipe(uglify({
      mangle: true
      compress: {
        drop_console: true
        booleans: true
        loops: true
        warnings: false
      }
    }))
    .pipe(gulp.dest(config.dest.production.scripts))
)
