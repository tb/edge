angular.module('controllers')
.controller("ProductsController", ['$scope', '$routeParams', '$location',
  ($scope,$routeParams,$location)->
    $scope.products = gon.jbuilder
    $scope.productById = (id) -> _.find $scope.products, id: id
    $scope.selectedProducts = () -> _.where $scope.products, selected: true
])
