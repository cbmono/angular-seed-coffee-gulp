#
# Dependencies
#
config = require('../gulp.config')

gulp = require('gulp')
rename = require('gulp-rename')
# replace = require('gulp-replace-task')


#
# Rename
#
renameIndex = (env) ->
  gulp
    .src(config.paths.index)

    .pipe(rename('index.html'))
    .pipe(gulp.dest(config.dest[env].main))


# Local index.html
gulp.task('rename:local:index', renameIndex.bind(this, 'local'))

# Production index.html
gulp.task('rename:production:index', renameIndex.bind(this, 'production'))

# Production robots.txt
gulp.task('rename:production:robots', ->
  gulp
    .src(config.paths.robots)

    .pipe(rename('robots.txt'))
    .pipe(gulp.dest(config.dest.production.main))
)
