#= require tb-factory

Factory.define 'recipe', ->
  @sequence 'id'
  @sequence 'name', (i) -> "Recepie #{i}"
