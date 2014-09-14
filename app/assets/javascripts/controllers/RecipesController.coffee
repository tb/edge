controllers = angular.module('controllers')
controllers.controller("RecipesController", [ '$scope', '$routeParams', '$location', '$resource',
  ($scope,$routeParams,$location,$resource)->
    $scope.search = (keywords)->  $location.path("/").search('keywords',keywords)
    Recipe = $resource('/recipes/:recipeId', { recipeId: "@id", format: 'json' })

    if $routeParams.keywords
      $scope.keywords = $routeParams.keywords
      Recipe.query(keywords: $routeParams.keywords, (results)-> $scope.recipes = results)
    else
      Recipe.query((results)-> $scope.recipes = results)

    $scope.view = (recipeId)-> $location.path("/recipes/#{recipeId}")

    $scope.newRecipe = -> $location.path("/recipes/new")
    $scope.edit      = (recipeId)-> $location.path("/recipes/#{recipeId}/edit")
])
