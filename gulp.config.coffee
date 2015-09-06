module.exports = {
  # Source paths/files
  paths: {
    gulpfile:   'gulpfile.coffee'
    htmls:      'app/**/*.html'
    images:     'app/img/**/*'
    sass:       'app/**/*.sass'
    scripts: [
                'app/**/*.coffee'
                '!app/**/*.spec.coffee'
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
