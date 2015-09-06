#
# Dependencies
#
runSequence = require('run-sequence')
config = require('../gulp.config')

gulp = require('gulp')
rename = require('gulp-rename')
replace = require('gulp-replace-task')


#
# Local
#
gulp.task('rename:local:index', ->
  gulp
    .src(config.paths.index)

    .pipe(rename('index.html'))
    .pipe(gulp.dest(config.dest.local.main))
)

gulp.task('rename:local:robots', ->
  gulp
    .src(config.paths.robots)

    .pipe(rename('robots.txt'))
    .pipe(gulp.dest(config.dest.local.main))
)
