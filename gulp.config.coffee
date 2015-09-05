module.exports = {
  # Source paths
  paths: {
    gulpfile: 'gulpfile.coffee'

    scripts: [
      'app/**/*.coffee'
      '!app/**/*.spec.coffee'
    ]

    htmls: 'app/**/*.html'

    images: 'app/img/**/*'
  }

  # Destination compiled files
  dest: {
    local: {
      scripts: 'builds/local/js'
      htmls: 'builds/local/partials'
      images: 'builds/local/img'
    }
  }
}
