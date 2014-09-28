String::w = ->
  @split /\s+/

class @AngularInjectable
  @inject: (args) ->
    for arg in args
      splittedArg = arg.split(':')
      if splittedArg.length is 2
        @$injectAs[splittedArg[0]] = splittedArg[1]
        @$inject.push splittedArg[0]
      else
        @$inject.push arg

  @$injectAs: {}
  @$inject: []

  injected: ->
    injected = []
    for key, index in @constructor.$inject
      mappedKey = @constructor.$injectAs[key]
      if mappedKey
        injected.push "#{key}->#{mappedKey}"
      else
        injected.push key
    injected

  constructor: (args...) ->
    for key, index in @constructor.$inject
      key = @constructor.$injectAs[key] || key
      @[key] = args[index]

    @initialize and @initialize()
