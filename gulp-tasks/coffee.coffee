#
# Dependencies
#
_  = require('lodash')
runSequence = require('run-sequence')
config = require('../gulp.config')

gulp = require('gulp')
concat = require('gulp-concat')
coffee = require('gulp-coffee')
sourcemaps = require('gulp-sourcemaps')

#
# Tasks
# Compile Coffeescript files and concatenate them
#
gulp.task('coffee:local', ->
  gulp
    .src(config.paths.scripts)

    .pipe(sourcemaps.init())
    .pipe(coffee())
    .pipe(concat('app.js'))
    .pipe(sourcemaps.write('.'))
    .pipe(gulp.dest(config.dest.local.scripts))
)
#
# gulp.task('coffee:dev', ->
#   gulp
#     .src(coffee_files.dev)
#     .pipe(sourcemaps.init())
#     .pipe(coffee())
#     .pipe(concat('app.js'))
#     .pipe(sourcemaps.write('.'))
#     .pipe(gulp.dest('builds/production/js'))
# )
#
# gulp.task('coffee:staging', ->
#   gulp
#     .src(coffee_files.staging)
#     .pipe(coffee())
#     .pipe(concat('app.js'))
#     .pipe(gulp.dest('builds/production/js'))
# )
#
# gulp.task('coffee:production', ->
#   gulp
#     .src(coffee_files.production)
#     .pipe(coffee())
#     .pipe(concat('app.js'))
#     .pipe(gulp.dest('builds/production/js'))
# )
