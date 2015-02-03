#= require jquery

module "My great feature"

test "will change the world", 2, ->
  ok true, "Passing is true"
  ok typeof (jQuery) isnt "undefined"

test "will change the world", 1, ->
  recipes = Factory.buildList 'recipe', 2
  ok recipes.length is 2, "2 recipies"
