(function() {
  'use strict';
  angular.module('myApp', ['ngRoute', 'myApp.view1', 'myApp.view2', 'myApp.version']).config([
    '$routeProvider', function($routeProvider) {
      return $routeProvider.otherwise({
        redirectTo: '/view1'
      });
    }
  ]);

}).call(this);

(function() {
  angular.module('myApp.view2', ['ngRoute']).config([
    '$routeProvider', function($routeProvider) {
      return $routeProvider.when('/view2', {
        templateUrl: 'view2/view2.html',
        controller: 'View2Ctrl'
      });
    }
  ]).controller('View2Ctrl', [function() {}]);

}).call(this);

(function() {
  angular.module('myApp.view1', ['ngRoute']).config([
    '$routeProvider', function($routeProvider) {
      return $routeProvider.when('/view1', {
        templateUrl: 'view1/view1.html',
        controller: 'View1Ctrl'
      });
    }
  ]).controller('View1Ctrl', [function() {}]);

}).call(this);

(function() {
  angular.module('myApp.version.interpolate-filter', []).filter('interpolate', [
    'version', function(version) {
      return function(text) {
        return String(text).replace(/\%VERSION\%/mg, version);
      };
    }
  ]);

}).call(this);

(function() {
  angular.module('myApp.version.version-directive', []).directive('appVersion', [
    'version', function(version) {
      return function(scope, elm, attrs) {
        return elm.text(version);
      };
    }
  ]);

}).call(this);

(function() {
  angular.module('myApp.version', ['myApp.version.interpolate-filter', 'myApp.version.version-directive']).value('version', '0.1');

}).call(this);

//# sourceMappingURL=app.js.map