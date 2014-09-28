@ProductsApp = angular.module('ProductsApp',[
  'templates',
  'ngRoute',
  'restangular',
  'controllers',
  'angular-flash.service',
  'angular-flash.flash-alert-directive',
  'ui.bootstrap'
])

ProductsApp.config(['$routeProvider', ($routeProvider)->
  $routeProvider
  .when('/products',
      templateUrl: 'products/index.html'
      controller: 'ProductsController'
    )
  .when('/products/:productId',
      templateUrl: 'products/show.html'
      controller: 'ProductController'
    )
  .otherwise redirectTo: '/products'
])

ProductsApp.config(['flashProvider', 'RestangularProvider'
  (flashProvider, RestangularProvider)->
    RestangularProvider.setRequestSuffix('.json')

    flashProvider.errorClassnames.push("alert-danger")
    flashProvider.warnClassnames.push("alert-warning")
    flashProvider.infoClassnames.push("alert-info")
    flashProvider.successClassnames.push("alert-success")
])
