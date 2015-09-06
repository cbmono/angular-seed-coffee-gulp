'use strict'

angular.module('myApp.version.version-directive', [])

.directive('appVersion', [ 'version', (version) ->
  (scope, element, attrs) ->
    element.text(version)
])
