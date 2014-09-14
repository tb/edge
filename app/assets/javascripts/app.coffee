controllers = angular.module('controllers', [])

receta = angular.module('receta',[
  'templates',
  'ngRoute',
  'ngResource',
  'controllers',
  'angular-flash.service',
  'angular-flash.flash-alert-directive'
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

@recipes = [
  {
    id: 1
    name: 'Baked Potato w/ Cheese'
  },
  {
    id: 2
    name: 'Garlic Mashed Potatoes',
  },
  {
    id: 3
    name: 'Potatoes Au Gratin',
  },
  {
    id: 4
    name: 'Baked Brussel Sprouts',
  },
]
