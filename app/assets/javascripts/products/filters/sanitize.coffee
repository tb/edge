ProductsApp.filter('sanitize', ['$sce', ($sce) ->
  (html) ->
    $sce.trustAsHtml html
])
