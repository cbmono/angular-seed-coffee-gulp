'use strict'

#
# Routes
#
myApp.App.config([
  '$routeProvider'

  ($routeProvider) ->
    $routeProvider.when('/view1', {
      templateUrl: 'partials/view1/view1.html'
      controller: 'View1Ctrl'
      controllerAs: 'view1'
      # resolve: {
      #   board: [ '$route', 'SomeService', ($route, SomeService) ->
      #     SomeService.loadData()
      #   ]
      # }
    })

    $routeProvider.when('/view2', {
      templateUrl: 'partials/view2/view2.html'
      controller: 'View2Ctrl'
      controllerAs: 'view2'
    })

    #
    # Fallback
    #
    $routeProvider.otherwise({ redirectTo: '/' })
])
