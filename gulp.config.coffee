module.exports = {
  # Source paths/files
  paths: {
    gulpfile:   'gulpfile.coffee'
    htmls:      'app/src/**/*.html'
    images:     'app/img/**/*'
    sass:       'app/src/**/*.sass'
    scripts: [
                'app/src/**/*.coffee'
                '!app/src/**/*.spec.coffee'
    ]
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
