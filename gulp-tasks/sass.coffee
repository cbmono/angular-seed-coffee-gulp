#
# Dependencies
#
config = require('../gulp.config')

gulp = require('gulp')
sass = require('gulp-ruby-sass')
sourcemaps  = require('gulp-sourcemaps')

#
# Compass (create css from sass)
#
gulp.task('compass:local', ->
  options = {
    compass: true   # enable Compass imports and load project file
    force: true     # recompile, even if the CSS file is newer
    sourcemap: true
  }

  sass(config.paths.sass_main, options)
    .pipe(sourcemaps.write())
    .pipe(gulp.dest(config.dest.local.css))
)

# gulp.task('compass:production', ->
#   options = {
#     compass: true
#     force: true
#     style: 'compressed'
#   }
#
#   sass('app/src/app.sass', options)
#     .pipe(gulp.dest('builds/production/css/app/src'))
# )
