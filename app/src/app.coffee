'use strict'

# jQuery shortcut
window.j$ = window.jQuery if window.jQuery

#
# Init global modules
#
window.myApp = {
  Directives:   angular.module 'Directives', []
  Controllers:  angular.module 'Controllers', []
  Filters:      angular.module 'Filters', []
  Services:     angular.module 'Services', []
  Providers:    angular.module 'Providers', []
}

#
# App Module and dependencies
#
window.myApp.App = angular
  .module('myApp', [
    'ngRoute'

    'Directives'
    'Controllers'
    'Filters'
    'Services'
    'Providers'
  ])
