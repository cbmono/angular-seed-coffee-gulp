module.exports = {
  # Source paths/files
  paths: {
    gulpfile:   'gulpfile.coffee'
    htmls:      'app/src/**/*.html'
    images:     'app/img/**/*'
    sass: [
                'app/src/**/*.sass'
                '!app/src/app.sass'
          ]
    sass_main:  'app/src/app.sass'
    scripts: [
                'app/src/**/*.coffee'
                '!app/src/**/*.spec.coffee'
    ]
  }

  # External libraries
  libs: {
    local: {
      css: [
        'app/bower_components/html5-boilerplate/dist/css/normalize.css'
        'app/bower_components/html5-boilerplate/dist/css/main.css'
      ]
      js: [
        'app/bower_components/angular/angular.js'
        'app/bower_components/angular-route/angular-route.js'
      ]
    }
  }

  # Destination compiled files
  dest: {
    local: {
      main:     'builds/local'

      css:      'builds/local/css'
      htmls:    'builds/local/partials'
      images:   'builds/local/img'
      scripts:  'builds/local/js'
    }
  }
}
