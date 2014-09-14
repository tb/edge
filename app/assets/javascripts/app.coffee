controllers = angular.module('controllers', [])

receta = angular.module('receta',[
  'templates',
  'ngRoute',
  'ngResource',
  'controllers',
  'angular-flash.service',
  'angular-flash.flash-alert-directive',
  'ui.bootstrap',
  'dcbClearInput'
])

receta.config([ '$routeProvider', 'flashProvider',
  ($routeProvider, flashProvider)->
    $routeProvider
    .when('/',
        templateUrl: "index.html"
        controller: 'RecipesController'
      )
    .when('/recipes/new',
        templateUrl: "form.html"
        controller: 'RecipeController'
      )
    .when('/recipes/:recipeId',
        templateUrl: "show.html"
        controller: 'RecipeController'
      )
    .when('/recipes/:recipeId/edit',
        templateUrl: "form.html"
        controller: 'RecipeController'
      )

    flashProvider.errorClassnames.push("alert-danger")
    flashProvider.warnClassnames.push("alert-warning")
    flashProvider.infoClassnames.push("alert-info")
    flashProvider.successClassnames.push("alert-success")
])
