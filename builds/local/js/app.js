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
  'use strict';
  describe('myApp.view1 module', function() {
    beforeEach(module('myApp.view1'));
    return describe('view1 controller', function() {
      return it('should ....', inject(function($controller) {
        var view1Ctrl;
        view1Ctrl = $controller('View1Ctrl');
        return expect(view1Ctrl).toBeDefined();
      }));
    });
  });

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
  'use strict';
  describe('myApp.view2 module', function() {
    beforeEach(module('myApp.view2'));
    return describe('view2 controller', function() {
      return it('should ....', inject(function($controller) {
        var view2Ctrl;
        view2Ctrl = $controller('View2Ctrl');
        return expect(view2Ctrl).toBeDefined();
      }));
    });
  });

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
  'use strict';
  describe('myApp.version module', function() {
    beforeEach(module('myApp.version'));
    return describe('interpolate filter', function() {
      return beforeEach(module(function($provide) {
        return $provide.value('version', 'TEST_VER');
      }), it('should replace VERSION', inject(function(interpolateFilter) {
        return expect(interpolateFilter('before %VERSION% after')).toEqual('before TEST_VER after');
      })));
    });
  });

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
  'use strict';
  describe('myApp.version module', function() {
    beforeEach(module('myApp.version'));
    return describe('app-version directive', function() {
      return it('should print current version', function() {
        module(function($provide) {
          return $provide.value('version', 'TEST_VER');
        });
        return inject(function($compile, $rootScope) {
          var element;
          element = $compile('<span app-version></span>')($rootScope);
          return expect(element.text()).toEqual('TEST_VER');
        });
      });
    });
  });

}).call(this);

(function() {
  angular.module('myApp.version', ['myApp.version.interpolate-filter', 'myApp.version.version-directive']).value('version', '0.1');

}).call(this);

(function() {
  'use strict';
  describe('myApp.version module', function() {
    beforeEach(module('myApp.version'));
    return describe('version service', function() {
      return it('should return current version', inject(function(version) {
        return expect(version).toEqual('0.1');
      }));
    });
  });

}).call(this);

//# sourceMappingURL=app.js.map