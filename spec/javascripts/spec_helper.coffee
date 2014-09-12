#= require support/bind-poly
#= require application
#= require angular-mocks/angular-mocks
#= require support/factories

beforeEach ->
  this.addMatchers
    toEqualData: (expected)-> return angular.equals(this.actual, expected)
