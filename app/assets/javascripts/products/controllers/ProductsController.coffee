class ProductsController extends RouteController
  ProductsApp.controller 'ProductsController', @
  @inject 'Products'.w()

  initialize: ->
    @fetchProducts()
    console.log @params

  fetchProducts: ->
    @Products.getList().then (products) => @scope.products = products
