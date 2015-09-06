#
# Dependencies
#
config = require('../gulp.config')

gulp = require('gulp')

#
# Copy Files
#
gulp.task('copy:local', ->
  # Images
  img = gulp
          .src(config.paths.images, { base: 'app/' })
          .pipe(gulp.dest(config.dest.local.main))

  # HTML partials
  html = gulp.src(config.paths.html, { base: 'app/src/' })
             .pipe(gulp.dest(config.dest.local.htmls))

  #
  # ASYNC - we have to wait until everything is done
  #
  mergeStream(img, html)
)

# gulp.task('copy:production', ->
#   # Images
#   img = gulp.src('app/img/**', { base: 'app/' })
#             .pipe(gulp.dest('builds/production/'))
#   # Files
#   files = gulp.src('app/files/**', { base: 'app/' })
#             .pipe(gulp.dest('builds/production/'))
#   # JS libs
#   js = gulp.src('app/js/**/*', { base: 'app/' })
#            .pipe(gulp.dest('builds/production/'))
#   # Bootstrap
#   boots = gulp.src([
#                 'app/bower_components/bootstrap/dist/css/bootstrap.css'
#                 'app/bower_components/bootstrap/dist/css/bootstrap.css.map'
#               ])
#               .pipe(gulp.dest('builds/production/css/'))
#
#   # HTML partials
#   html = gulp.src('app/src/**/*.html', { base: 'app/src/' })
#              .pipe(gulp.dest('builds/production/partials/'))
#   # Favicon
#   favi = gulp.src('app/favicon.*', { base: 'app/' })
#              .pipe(gulp.dest('builds/production/'))
#
#   # robots.txt for api.mycs.com
#   robots = gulp.src('app/robots-api.txt', { base: 'app/' })
#                .pipe(gulp.dest('builds/production/'))
#
#   # translations base language
#   translations = gulp.src('app/config/translations.base.json')
#              .pipe(gulp.dest('builds/production/translations'))
#
#   # Fonts
#   font = gulp.src('app/fonts/**')
#              .pipe(gulp.dest('builds/production/fonts'))
#
#   # Angular Route Map
#   arm = gulp.src('app/bower_components/angular-route/angular-route.min.js.map')
#             .pipe(gulp.dest('builds/production/js/'))
#
#   # Angular Animate Map
#   aam = gulp.src('app/bower_components/angular-animate/angular-animate.min.js.map')
#             .pipe(gulp.dest('builds/production/js/'))
#
#   # Angular md5 Map
#   amm = gulp.src('app/bower_components/angular-md5/angular-md5.min.js.map')
#             .pipe(gulp.dest('builds/production/js/'))
#
#   # server_data/    <---- ToDo: Remove after we have a running API
#   sd = gulp.src('server_data/**', { base: 'server_data/' })
#            .pipe(gulp.dest('builds/production/server_data'))
#
#   # ASYNC - we have to wait until everything is done
#   mergeStream(img, files, js, html, favi, translations, robots, boots, font, arm, aam, amm, sd)
# )

# gulp.task('copy:gziped', ->
#   gulp
#     .src('gziped/builds/production/**/*', { base: 'gziped/builds/production' })
#     .pipe(gulp.dest('builds/production'))
# )
