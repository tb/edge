class ProductController extends RouteController
  ProductsApp.controller 'ProductController', @
  @inject 'Products'.w()

  initialize: ->
    @fetchProduct()
    console.log @params

  fetchProduct: ->
    @Products.one(@params.productId).get().then (product) => @scope.product = product
