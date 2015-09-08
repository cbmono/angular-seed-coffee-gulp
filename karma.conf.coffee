module.exports = (config) ->
  config.set({

    basePath: './'

    files: [
      'app/bower_components/angular/angular.js'
      'app/bower_components/angular-route/angular-route.js'
      'app/bower_components/angular-mocks/angular-mocks.js'

      'builds/local/js/app.js'
      'app/src/**/*.spec.coffee'
    ]

    autoWatch: true
    frameworks: [ 'jasmine' ]
    browsers: [ 'Chrome' ]
    plugins: [
      'karma-chrome-launcher'
      'karma-firefox-launcher'
      'karma-jasmine'
      'karma-junit-reporter'
      'karma-coffee-preprocessor'
    ]

    junitReporter: {
      outputFile: 'test_out/unit.xml'
      suite: 'unit'
    }

    reporters: [ 'progress' ]

    preprocessors: {
      'app/src/**/*.coffee': [ 'coffee' ]
    }

    coffeePreprocessor: {
      options:
        bare: true
        sourceMap: true

      transformPath: (path) ->
        path.replace /\.js$/, '.coffee'
    }
  })
